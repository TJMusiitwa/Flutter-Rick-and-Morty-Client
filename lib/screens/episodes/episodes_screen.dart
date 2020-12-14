import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ricky_n_morty/api_queries/graph_queries.dart'
    show getAllEpisodes;
import 'package:ricky_n_morty/screens/settings_screen.dart';
import 'episode_details.dart';

class EpisodesScreen extends StatelessWidget {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Episodes'),
        automaticallyImplyLeading: false,
        elevation: 0,
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
              document: gql(getAllEpisodes), variables: {"page": 0}),
          builder: (QueryResult result,
              {VoidCallback refetch, FetchMore fetchMore}) {
            if (result.isLoading) {
              return Center(child: CircularProgressIndicator());
            }
            if (result.hasException) {
              return Text(result.exception.toString());
            }

            if (result.data == null) {
              return Center(
                child: Text(
                    'Uhh Morty, you do know there is nothing but junk to watch on TV'),
              );
            }
            final List episodes = result.data['episodes']['results'];

            final nextPage = result.data['episodes']['info']['next'];

            FetchMoreOptions fetchMoreEpisodes = FetchMoreOptions(
                variables: {'page': nextPage},
                updateQuery: (existing, newEpisodes) => ({
                      'episodes': {
                        'page': newEpisodes['info']['next'],
                        'results': [
                          ...existing['episodes']['results'],
                          ...newEpisodes['episodes']['results']
                        ],
                      }
                    }));

            ScrollController _scrollController = ScrollController();
            _scrollController.addListener(() {
              if (_scrollController.position.maxScrollExtent ==
                  _scrollController.position.pixels) {
                if (!isLoading) {
                  isLoading = !isLoading;
                  fetchMore(fetchMoreEpisodes);
                }
              }
            });

            return ListView.builder(
              controller: _scrollController,
              itemCount: episodes.length,
              itemBuilder: (BuildContext context, int index) {
                final episode = episodes[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    title: Text(
                      episode['name'],
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(fontSize: 20),
                    ),
                    subtitle: Text('Aired: ' + episode['air_date']),
                    trailing: Text(episode['episode']),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => EpisodeDetails(
                          id: episode['id'],
                          episodeTitle: episode['name'],
                          episode: episode['episode'],
                          episodeDate: episode['air_date'],
                        ),
                      ),
                    ),
                    // Navigator.pushNamed(context, '/episodesDetails',
                    //     arguments: ),
                  ),
                );
              },
            );
          }),
    );
  }
}
