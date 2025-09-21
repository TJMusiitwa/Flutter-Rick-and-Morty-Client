import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ricky_n_morty/screens/settings_screen.dart';

import '../../graphql/__generated__/allEpisodes.data.gql.dart';
import '../../graphql/__generated__/allEpisodes.req.gql.dart';
import '../../graphql/__generated__/allEpisodes.var.gql.dart';
import 'episode_details.dart';

class EpisodesScreen extends StatefulWidget {
  const EpisodesScreen({super.key});

  @override
  State<EpisodesScreen> createState() => _EpisodesScreenState();
}

class _EpisodesScreenState extends State<EpisodesScreen> {
  final Client? client = GetIt.I<Client>();
  int _currentPage = 1;
  bool _isLoading = false;

  late final episodesReq = GallEpisodesReq(
    (l) => l
      ..requestId = 'getEpisodesId'
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

      final paginationEps = episodesReq.rebuild((p) {
        return p
          ..vars.page = _currentPage + 1
          ..updateResult = (previous, next) {
            if (previous == null || next == null) return next;
            return previous.rebuild(
              (p) => p..episodes.results.addAll(next.episodes!.results!),
            );
          };
      });

      await client!.request(paginationEps).first;

      setState(() {
        _currentPage++;
        _isLoading = false;
      });
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
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SettingsScreen()),
            ),
          ),
        ],
      ),
      body: Operation(
        client: client!,
        operationRequest: episodesReq,
        builder:
            (
              BuildContext context,
              OperationResponse<GallEpisodesData, GallEpisodesVars?>? response,
              Object? error,
            ) {
              if (response!.loading) {
                return const Center(child: CircularProgressIndicator());
              } else if (response.hasErrors) {
                return Text(response.graphqlErrors!.first.message);
              } else if (response.data!.episodes!.results == null) {
                return const Center(
                  child: Text(
                    'Uhh Morty, you do know there is nothing but junk to watch on TV',
                  ),
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
                        episode!.name!,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium!.copyWith(fontSize: 20),
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
