import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ricky_n_morty/screens/settings_screen.dart';

import '../../graphql/__generated__/allCharacters.data.gql.dart';
import '../../graphql/__generated__/allCharacters.req.gql.dart';
import '../../graphql/__generated__/allCharacters.var.gql.dart';
import 'character_details.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  final Client? client = GetIt.I<Client>();
  int _currentPage = 1;
  bool _isLoading = false;
  final SearchController _characterSearchController = SearchController();

  late final charactersRequest = GallCharactersReq(
    (c) => c
      ..requestId = 'getCharactersId'
      ..fetchPolicy = FetchPolicy.CacheFirst
      ..vars.page = _currentPage,
  );

  final ScrollController _scrollController = ScrollController();

  Future<void> _scrollListener() async {
    if (_isLoading) return;

    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8) {
      setState(() {
        _isLoading = true;
      });

      final paginationChars = charactersRequest.rebuild((p) {
        return p
          ..vars.page = _currentPage + 1
          ..updateResult = (previous, next) {
            if (previous == null || next == null) return next;
            return previous.rebuild(
              (p) => p..characters.results.addAll(next.characters!.results!),
            );
          };
      });

      try {
        await client!.request(paginationChars).first;
        setState(() {
          _currentPage++;
        });
      } catch (e) {
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to load more characters')),
        );
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
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
      body: Operation(
        client: client!,
        operationRequest: charactersRequest,
        builder:
            (
              BuildContext context,
              OperationResponse<GallCharactersData, GallCharactersVars?>?
              response,
              Object? error,
            ) {
              if (response!.loading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (response.hasErrors) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      response.graphqlErrors!.first.message,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                    action: SnackBarAction(label: 'RETRY', onPressed: () {}),
                    behavior: SnackBarBehavior.fixed,
                  ),
                );
              }

              if (response.data!.characters == null) {
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
              final characters = response.data!.characters!.results!
                  .toBuiltList();
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
