import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ricky_n_morty/api_queries/graph_queries.dart'
    show getEpisodeDetails;

class EpisodeDetails extends StatelessWidget {
  final String id, episodeTitle, episode, episodeDate;

  const EpisodeDetails(
      {Key key, this.id, this.episodeTitle, this.episode, this.episodeDate})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          episodeTitle,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Query(
        options: QueryOptions(
            document: gql(getEpisodeDetails),
            variables: {"id": int.tryParse(id)}),
        builder: (result, {fetchMore, refetch}) {
          if (result.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          final episodeDetails = result.data['episode'];
          final List episodeCharacters = episodeDetails['characters'];

          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Episode $episode'),
                    Text('Aired $episodeDate'),
                  ],
                ),
                Text('Characters in this episode'),
                Divider(),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: List<Widget>.generate(
                      episodeCharacters.length,
                      (index) => Chip(
                            avatar: CircleAvatar(
                              backgroundImage: CachedNetworkImageProvider(
                                  episodeCharacters[index]['image']),
                            ),
                            label: Text(episodeCharacters[index]['name']),
                          )),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
