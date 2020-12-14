import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class CharacterDetails extends StatelessWidget {
  final String getCharacterDetails = """
  query characterDetails(\$id: ID!) {
  character(id: \$id) {
    id 
    status
    type
    image
    origin {
      name
    }
    episode {
      episode
    }
  }
}""";

  final String id,
      characterName,
      characterGender,
      characterSpecies,
      characterImage;

  const CharacterDetails(
      {Key key,
      this.id,
      this.characterName,
      this.characterGender,
      this.characterSpecies,
      this.characterImage})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Query(
        options: QueryOptions(
            document: gql(getCharacterDetails),
            variables: {"id": int.tryParse(id)}),
        builder: (result, {fetchMore, refetch}) {
          if (result.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          final characterDetails = result.data['character'];
          final List characterEpisodes = characterDetails['episode'];

          return CustomScrollView(
            slivers: <Widget>[
              SliverSafeArea(
                top: false,
                sliver: SliverAppBar(
                  pinned: true,
                  floating: true,
                  expandedHeight: 300,
                  automaticallyImplyLeading: true,
                  leading: BackButton(
                    color: Colors.amber,
                  ),
                  elevation: 0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Hero(
                      tag: characterDetails['id'],
                      child: CachedNetworkImage(
                        imageUrl: characterDetails['image'],
                        fit: BoxFit.cover,
                        colorBlendMode: BlendMode.darken,
                        color: Colors.black12,
                      ),
                    ),
                    title: Text(characterName),
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text('STATUS'),
                              Text(characterDetails['status'])
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('SPECIES'),
                              Text(characterSpecies)
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('GENDER'),
                              Text(characterGender)
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text('TYPE'),
                              Text(characterDetails['type'] ?? '')
                            ],
                          )
                        ],
                      ),
                      Text('🌍 ${characterDetails['origin']['name']}'),
                      Text('Episodes with $characterName'),
                      Divider(),
                      Wrap(
                        spacing: 6,
                        runSpacing: 6,
                        children: List<Widget>.generate(
                            characterEpisodes.length,
                            (index) => Chip(
                                  label:
                                      Text(characterEpisodes[index]['episode']),
                                )),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
