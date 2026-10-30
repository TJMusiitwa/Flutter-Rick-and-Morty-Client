import 'package:cached_network_image/cached_network_image.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:material_ui/material_ui.dart';
import 'package:ricky_n_morty/screens/settings_screen.dart';

import '../../graphql/allCharacters.graphql.dart';
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
  final SearchController _characterSearchController = SearchController();

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
    _characterSearchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Characters'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          SearchAnchor(
            searchController: _characterSearchController,
            builder: (_, controller) {
              return IconButton(
                icon: Icon(Icons.search),
                onPressed: () => controller.openView(),
              );
            },
            suggestionsBuilder: (_, controller) {
              final randomCharacters = [
                'Rick',
                'Morty',
                'Summer',
                'Jerry',
                'Beth',
              ];
              return randomCharacters.map((location) {
                return ListTile(
                  title: Text(location),
                  onTap: () => controller.closeView(null),
                );
              }).toList();
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            iconSize: 30,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SettingsScreen()),
            ),
          ),
        ],
      ),
      body: Query$allCharacters$Widget(
        options: Options$Query$allCharacters(
          variables: Variables$Query$allCharacters(page: 1),
          fetchPolicy: FetchPolicy.cacheFirst,
        ),
        builder: (response, {fetchMore, refetch}) {
          _fetchMore = fetchMore;
          _nextPage = response.parsedData?.characters?.info?.next;
          if (response.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (response.hasException && response.parsedData == null) {
            return Center(child: Text(response.exception.toString()));
          }

          if (response.parsedData?.characters?.results == null) {
            return Column(
              children: [
                Center(child: Image.asset('assets/rick_mort_splash.png')),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    'Uhh Morty, you do know there is nothing but junk to watch on TV',
                    softWrap: true,
                  ),
                ),
              ],
            );
          }
          final characters = response.parsedData!.characters!.results!.toList();
          return Stack(
            children: [
              ListView.builder(
                controller: _scrollController,
                itemCount: characters.length,
                itemBuilder: (BuildContext context, int index) {
                  final character = characters[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      leading: SizedBox(
                        height: 100,
                        width: 80,
                        child: CachedNetworkImage(
                          imageUrl: character!.image!,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        character.name!,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      subtitle: Text(character.species!),
                      trailing: Text(character.gender!),
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
                    ),
                  );
                },
              ),
              if (_isLoading)
                const Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
