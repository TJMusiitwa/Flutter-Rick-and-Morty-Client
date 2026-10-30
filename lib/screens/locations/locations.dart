import 'package:cached_network_image/cached_network_image.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:material_ui/material_ui.dart';
import 'package:ricky_n_morty/screens/settings_screen.dart';

import '../../graphql/allLocations.graphql.dart';
import 'location_details.dart';

class LocationsScreen extends StatefulWidget {
  const LocationsScreen({super.key});

  @override
  State<LocationsScreen> createState() => _LocationsScreenState();
}

class _LocationsScreenState extends State<LocationsScreen> {
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
        FetchMoreOptions$Query$allLocations(
          variables: Variables$Query$allLocations(page: nextPage),
          updateQuery: (previous, next) {
            if (previous == null || next == null || next['locations'] == null) {
              return previous;
            }
            final oldPage = previous['locations'] as Map<String, dynamic>?;
            final newPage = next['locations'] as Map<String, dynamic>;
            return {
              ...previous,
              'locations': {
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
          const SnackBar(content: Text('Failed to load more locations')),
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
              child: Query$allLocations$Widget(
                options: Options$Query$allLocations(
                  variables: Variables$Query$allLocations(page: 1),
                  fetchPolicy: FetchPolicy.cacheFirst,
                ),
                builder: (response, {fetchMore, refetch}) {
                  _fetchMore = fetchMore;
                  _nextPage = response.parsedData?.locations?.info?.next;
                  if (response.isLoading && _currentPage == 1) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: colorScheme.primary,
                      ),
                    );
                  } else if (response.hasException) {
                    return Center(
                      child: Text(
                        response.exception.toString(),
                        style: TextStyle(color: colorScheme.error),
                      ),
                    );
                  } else if (response.parsedData?.locations?.results == null) {
                    return const Center(
                      child: Text(
                        'Uhh Rick, there are no locations here',
                        style: TextStyle(color: Colors.white70),
                      ),
                    );
                  }

                  final locations = response.parsedData!.locations!.results!
                      .toList();
                  return ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    itemCount: locations.length + (_isLoading ? 1 : 0),
                    itemBuilder: (BuildContext context, int index) {
                      if (index == locations.length) {
                        return Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Center(
                            child: CircularProgressIndicator(
                              color: colorScheme.primary,
                            ),
                          ),
                        );
                      }
                      final location = locations[index];
                      return _buildLocationNode(
                        context,
                        location!,
                        colorScheme,
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

  Widget _buildHeader(BuildContext context, ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'GALACTIC',
                style: TextStyle(
                  color: colorScheme.primary,
                  fontSize: 10,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 4,
                ),
              ),
              const Text(
                'LOCATION MAP',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  height: 1.1,
                ),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.settings_outlined, color: Colors.white60),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SettingsScreen()),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLocationNode(
    BuildContext context,
    Query$allLocations$locations$results location,
    ColorScheme colorScheme,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Node connector UI
            Column(
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: colorScheme.primary.withValues(alpha: 0.5),
                        blurRadius: 8,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 2,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    color: colorScheme.primary.withValues(alpha: 0.2),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.05),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.1),
                    width: 1,
                  ),
                ),
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    tilePadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    iconColor: colorScheme.primary,
                    collapsedIconColor: Colors.white38,
                    title: Text(
                      location.name ?? '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          location.type ?? '',
                          style: TextStyle(
                            color: colorScheme.primary.withValues(alpha: 0.7),
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '•',
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.3),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            location.dimension ?? '',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white.withValues(alpha: 0.5),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    children: [
                      const Divider(color: Colors.white10),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'RESIDENTS:',
                            style: TextStyle(
                              color: Colors.white.withValues(alpha: 0.3),
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                            ),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => LocationDetails(
                                  id: location.id,
                                  locationName: location.name,
                                  locationDimension: location.dimension,
                                  locationType: location.type,
                                ),
                              ),
                            ),
                            child: Text(
                              'DETAILS',
                              style: TextStyle(
                                color: colorScheme.primary,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      _buildResidentAvatars(location, colorScheme),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResidentAvatars(
    Query$allLocations$locations$results location,
    ColorScheme colorScheme,
  ) {
    if (location.residents == null || location.residents!.isEmpty) {
      return Text(
        'NO KNOWN RESIDENTS',
        style: TextStyle(
          color: Colors.white.withValues(alpha: 0.3),
          fontSize: 12,
          fontStyle: FontStyle.italic,
        ),
      );
    }

    final residents = location.residents!;
    const double avatarSize = 32;
    const double overlap = 10;
    const int maxVisible = 8;

    final displayCount = residents.length > maxVisible
        ? maxVisible
        : residents.length;
    final hasMore = residents.length > maxVisible;

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
              child: Tooltip(
                message: residents[i]?.name ?? '',
                child: Container(
                  width: avatarSize,
                  height: avatarSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 2),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        residents[i]?.image ?? 'https://rickandmortyapi.com/api/character/avatar/1.jpeg',
                      ),
                      fit: BoxFit.cover,
                    ),
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
                    '+${residents.length - displayCount}',
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
