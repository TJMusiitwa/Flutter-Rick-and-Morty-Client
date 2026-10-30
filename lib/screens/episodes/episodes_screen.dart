import 'package:cached_network_image/cached_network_image.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ricky_n_morty/screens/settings_screen.dart';

import '../../design/app_theme.dart';

import '../../graphql/allEpisodes.graphql.dart';
import 'episode_details.dart';

class EpisodesScreen extends StatefulWidget {
  const EpisodesScreen({super.key});

  @override
  State<EpisodesScreen> createState() => _EpisodesScreenState();
}

class _EpisodesScreenState extends State<EpisodesScreen> {
  FetchMore? _fetchMore;
  int? _nextPage;
  int _currentPage = 1;
  bool _isLoading = false;

  final ScrollController _scrollController = ScrollController();

  Future<void> _scrollListener() async {
    final nextPage = _nextPage;
    final fetchMore = _fetchMore;
    if (_isLoading ||
        nextPage == null ||
        fetchMore == null ||
        _scrollController.position.pixels <
            _scrollController.position.maxScrollExtent * 0.8) {
      return;
    }
    setState(() => _isLoading = true);
    try {
      final result = await fetchMore(
        FetchMoreOptions$Query$allEpisodes(
          variables: Variables$Query$allEpisodes(page: nextPage),
          updateQuery: (previous, next) {
            if (previous == null || next == null || next['episodes'] == null) {
              return previous;
            }
            final oldPage = previous['episodes'] as Map<String, dynamic>?;
            final newPage = next['episodes'] as Map<String, dynamic>;
            return {
              ...previous,
              'episodes': {
                ...newPage,
                'results': [
                  ...?oldPage?['results'] as List<dynamic>?,
                  ...?newPage['results'] as List<dynamic>?,
                ],
              },
            };
          },
        ),
      );
      if (result.hasException) throw result.exception!;
      if (mounted) {
        setState(() => _currentPage = nextPage);
      }
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to load more episodes')),
        );
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() => _scrollListener());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildHeader(context, colorScheme),
            Expanded(
              child: Query$allEpisodes$Widget(
                options: Options$Query$allEpisodes(
                  variables: Variables$Query$allEpisodes(page: 1),
                  fetchPolicy: FetchPolicy.cacheFirst,
                ),
                builder: (response, {fetchMore, refetch}) {
                  _fetchMore = fetchMore;
                  _nextPage = response.parsedData?.episodes?.info?.next;
                  if (response.isLoading && _currentPage == 1) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: colorScheme.primary,
                      ),
                    );
                  } else if (response.hasException &&
                      response.parsedData == null) {
                    return CatalogState(
                      message: 'Could not load episodes. Check your connection and try again.',
                      onRetry: () => refetch?.call(),
                    );
                  } else if (response.parsedData?.episodes?.results == null) {
                    return const Center(
                      child: Text(
                        'Uhh Morty, you do know there is nothing but junk to watch on TV',
                        style: TextStyle(color: Colors.white70),
                      ),
                    );
                  }

                  final episodes = response.parsedData!.episodes!.results!
                      .toList();
                  return ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    itemCount: episodes.length + (_isLoading ? 1 : 0),
                    itemBuilder: (BuildContext context, int index) {
                      if (index == episodes.length) {
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Center(
                            child: CircularProgressIndicator(
                              color: colorScheme.primary,
                            ),
                          ),
                        );
                      }
                      final episode = episodes[index];
                      return _buildEpisodeCard(context, episode!, colorScheme);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, ColorScheme colorScheme) =>
      CatalogHeader(
        title: 'Episodes',
        subtitle: 'Explore every adventure.',
        onSettings: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const SettingsScreen()),
        ),
      );

  Widget _buildEpisodeCard(
    BuildContext context,
    Query$allEpisodes$episodes$results episode,
    ColorScheme colorScheme,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => EpisodeDetails(
                id: episode.id,
                episodeTitle: episode.name,
                episode: episode.episode,
                episodeDate: episode.air_date,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        episode.episode ?? 'Episode',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: AppColors.accent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Icon(Icons.chevron_right, color: AppColors.muted),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  episode.name ?? 'Unknown episode',
                  style: Theme.of(context).textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  episode.air_date ?? 'Air date unknown',
                  style: Theme.of(context).textTheme.bodyMedium
                      ?.copyWith(color: AppColors.muted),
                ),
                const SizedBox(height: 16),
                _buildCharacterAvatars(episode, colorScheme),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCharacterAvatars(
    Query$allEpisodes$episodes$results episode,
    ColorScheme colorScheme,
  ) {
    if (episode.characters == null || episode.characters!.isEmpty) {
      return const SizedBox();
    }

    final characters = episode.characters!;
    const double avatarSize = 36;
    const double overlap = 12;
    const int maxVisible = 6;

    final displayCount = characters.length > maxVisible
        ? maxVisible
        : characters.length;
    final hasMore = characters.length > maxVisible;

    final totalWidth =
        (displayCount * (avatarSize - overlap)) +
        (hasMore ? avatarSize : overlap);

    return SizedBox(
      height: avatarSize,
      width: totalWidth,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          for (int i = 0; i < displayCount; i++)
            Positioned(
              left: i * (avatarSize - overlap),
              child: Container(
                width: avatarSize,
                height: avatarSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      characters[i]?.image ?? 'https://rickandmortyapi.com/api/character/avatar/1.jpeg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          if (hasMore)
            Positioned(
              left: displayCount * (avatarSize - overlap),
              child: Container(
                width: avatarSize,
                height: avatarSize,
                decoration: BoxDecoration(
                  color: colorScheme.primary,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Center(
                  child: Text(
                    '+${characters.length - displayCount}',
                    style: TextStyle(
                      color: colorScheme.onPrimary,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
