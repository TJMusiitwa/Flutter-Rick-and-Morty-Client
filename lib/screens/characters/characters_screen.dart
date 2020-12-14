import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ricky_n_morty/api_queries/graph_queries.dart'
    show getAllCharacters;
import 'package:ricky_n_morty/screens/settings_screen.dart';
import 'character_details.dart';

class CharactersScreen extends StatelessWidget {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Characters'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.settings),
              iconSize: 30,
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => SettingsScreen()))),
        ],
      ),
      body: Query(
          options: QueryOptions(
              document: gql(getAllCharacters), variables: {"page": 1}),
          builder: (QueryResult result,
              {VoidCallback refetch, FetchMore fetchMore}) {
            if (result.isLoading) {
              return Center(child: CircularProgressIndicator());
            }
            if (result.hasException) {
              Scaffold.of(context).showSnackBar(SnackBar(
                content: Text(
                  result.exception.toString(),
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
                action: SnackBarAction(label: 'RETRY', onPressed: () {}),
                behavior: SnackBarBehavior.fixed,
              ));
            }

            if (result.data == null) {
              return Column(
                children: [
                  Center(
                    child: Image.asset('assets/rick_mort_splash.png'),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                        'Uhh Morty, you do know there is nothing but junk to watch on TV'),
                  ),
                ],
              );
            }

            final List characters = result.data['characters']['results'];

            final int charactersResponse =
                result.data['characters']['info']['next'];

            FetchMoreOptions fetchMoreCharacters = FetchMoreOptions(
                variables: {'next': charactersResponse},
                updateQuery: (previousResultData, fetchMoreResultData) {
                  final List<dynamic> locales = [
                    ...previousResultData['characters']['results']
                        as List<dynamic>,
                    ...fetchMoreResultData['characters']['results']
                        as List<dynamic>
                  ];

                  fetchMoreResultData['characters']['results'] = locales;

                  return fetchMoreResultData;
                });

            ScrollController _scrollController = ScrollController();
            _scrollController.addListener(() {
              if (_scrollController.position.maxScrollExtent ==
                  _scrollController.position.pixels) {
                if (!isLoading) {
                  isLoading = !isLoading;
                  fetchMore(fetchMoreCharacters);
                }
              }
            });

            return ListView.builder(
              itemCount: characters.length,
              itemBuilder: (BuildContext context, int index) {
                final character = characters[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    // leading: Hero(
                    //   tag: character['id'],
                    //   child: CachedNetworkImage(
                    //     height: 100,
                    //     imageUrl: character['image'],
                    //     fit: BoxFit.contain,
                    //     //fadeInDuration: Duration(milliseconds: 500),
                    //   ),
                    // ),
                    title: Text(
                      character['name'],
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    subtitle: Text(character['species']),
                    trailing: Text(character['gender']),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => CharacterDetails(
                          id: character['id'],
                          characterName: character['name'],
                          characterGender: character['gender'],
                          characterSpecies: character['species'],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
