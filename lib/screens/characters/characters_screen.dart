import 'package:cached_network_image/cached_network_image.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ricky_n_morty/screens/settings_screen.dart';

import '../../graphql/allCharacters.graphql.dart';
import '../../design/app_theme.dart';
import 'character_details.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  FetchMore? _fetchMore;
  int? _nextPage;
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
        FetchMoreOptions$Query$allCharacters(
          variables: Variables$Query$allCharacters(page: nextPage),
          updateQuery: (previous, next) {
            if (previous == null ||
                next == null ||
                next['characters'] == null) {
              return previous;
            }
            final oldPage = previous['characters'] as Map<String, dynamic>?;
            final newPage = next['characters'] as Map<String, dynamic>;
            return {
              ...previous,
              'characters': {
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
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to load more characters')),
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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CatalogHeader(
              title: 'Characters',
              subtitle: 'Meet the people of the multiverse.',
              onSettings: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SettingsScreen()),
              ),
            ),
            Expanded(
              child: Query$allCharacters$Widget(
                options: Options$Query$allCharacters(
                  variables: Variables$Query$allCharacters(page: 1),
                  fetchPolicy: FetchPolicy.cacheFirst,
                ),
                builder: (response, {fetchMore, refetch}) {
                  _fetchMore = fetchMore;
                  _nextPage = response.parsedData?.characters?.info?.next;
                  if (response.isLoading && response.parsedData == null) {
                    return const CatalogState(
                      message: 'Loading characters...',
                      loading: true,
                    );
                  }
                  if (response.hasException && response.parsedData == null) {
                    return CatalogState(
                      message: 'Could not load characters. Check your connection and try again.',
                      onRetry: () => refetch?.call(),
                    );
                  }
                  final characters =
                      response.parsedData?.characters?.results
                          ?.whereType<Query$allCharacters$characters$results>()
                          .toList() ??
                      [];
                  if (characters.isEmpty) {
                    return const CatalogState(message: 'No characters found.');
                  }
                  return ListView.separated(
                    controller: _scrollController,
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                    itemCount: characters.length + (_isLoading ? 1 : 0),
                    separatorBuilder: (_, _) => const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      if (index == characters.length) {
                        return const Center(
                          child: Padding(
                            padding: EdgeInsets.all(16),
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }
                      final character = characters[index];
                      return Material(
                        color: AppColors.surface,
                        borderRadius: BorderRadius.circular(16),
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => CharacterDetails(
                                id: character.id,
                                characterName: character.name,
                                characterGender: character.gender,
                                characterSpecies: character.species,
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              CachedNetworkImage(
                                imageUrl: character.image ?? '',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                                errorWidget: (_, _, _) => const SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Icon(Icons.person_outline),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        character.name ?? 'Unknown',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        [character.species, character.gender]
                                            .whereType<String>()
                                            .where((s) => s.isNotEmpty)
                                            .join(' · '),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(color: AppColors.muted),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 12),
                                child: Icon(
                                  Icons.chevron_right,
                                  color: AppColors.muted,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
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
}
