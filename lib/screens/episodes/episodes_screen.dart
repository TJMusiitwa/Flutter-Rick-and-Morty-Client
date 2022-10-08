import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ricky_n_morty/graphql/allEpisodes.data.gql.dart';
import 'package:ricky_n_morty/graphql/allEpisodes.req.gql.dart';
import 'package:ricky_n_morty/graphql/allEpisodes.var.gql.dart';
import 'package:ricky_n_morty/screens/settings_screen.dart';

import 'episode_details.dart';

class EpisodesScreen extends StatefulWidget {
  const EpisodesScreen({super.key});

  @override
  _EpisodesScreenState createState() => _EpisodesScreenState();
}

class _EpisodesScreenState extends State<EpisodesScreen> {
  final Client? client = GetIt.I<Client>();

  final episodesReq = GallEpisodesReq((l) => l
    ..requestId = 'getEpisodesId'
    ..fetchPolicy = FetchPolicy.CacheFirst
    ..vars.page = pageNum);

  static int pageNum = 1;

  final ScrollController _scrollController = ScrollController();

  _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      final paginationEps = episodesReq.rebuild(
        (p) {
          return p
            ..vars.page = pageNum++
            ..updateResult = (previous, next) =>
                previous?.rebuild((p) =>
                    p..episodes.results.addAll(next!.episodes!.results!)) ??
                next;
        },
      );
      client!.requestController.add(paginationEps);
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
        title: const Text('Episodes'),
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.settings),
              iconSize: 30,
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const SettingsScreen()))),
        ],
      ),
      body: Operation(
        client: client!,
        operationRequest: episodesReq,
        builder: (BuildContext context,
            OperationResponse<GallEpisodesData, GallEpisodesVars?>? response,
            Object? error) {
          if (response!.loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (response.hasErrors) {
            return Text(response.graphqlErrors!.first.message);
          } else if (response.data!.episodes!.results == null) {
            return const Center(
              child: Text(
                  'Uhh Morty, you do know there is nothing but junk to watch on TV'),
            );
          }

          final episodes = response.data!.episodes!.results!.toBuiltList();
          return ListView.builder(
            controller: _scrollController,
            itemCount: episodes.length,
            shrinkWrap: true,
            itemExtent: 100,
            itemBuilder: (BuildContext context, int index) {
              final episode = episodes[index];
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  title: Text(
                    episode.name!,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 20),
                  ),
                  subtitle: Text('Aired: ${episode.air_date!}'),
                  trailing: Text(episode.episode!),
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
                ),
              );
            },
          );
        },
      ),
    );
  }
}
