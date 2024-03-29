import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ricky_n_morty/graphql/episodeDetails.data.gql.dart';
import 'package:ricky_n_morty/graphql/episodeDetails.req.gql.dart';
import 'package:ricky_n_morty/graphql/episodeDetails.var.gql.dart';

class EpisodeDetails extends StatelessWidget {
  final String? id, episodeTitle, episode, episodeDate;

  const EpisodeDetails(
      {Key? key, this.id, this.episodeTitle, this.episode, this.episodeDate})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final client = GetIt.I<Client>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          episodeTitle!,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Operation(
        client: client,
        operationRequest: GepisodeDetailsReq((d) => d
          ..vars.id = id
          ..fetchPolicy = FetchPolicy.CacheFirst),
        builder: (BuildContext context,
            OperationResponse<GepisodeDetailsData, GepisodeDetailsVars?>?
                response,
            Object? error) {
          if (response!.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          final episodeDetails = response.data!.episode!;
          final episodeCharacters = episodeDetails.characters!.asList();
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'Episode $episode',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Aired $episodeDate',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'Characters in this episode',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Divider(),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: List<Widget>.generate(
                    episodeCharacters.length,
                    (index) => Chip(
                      avatar: CircleAvatar(
                        backgroundImage: CachedNetworkImageProvider(
                            episodeCharacters[index].image!),
                      ),
                      label: SizedBox(
                          height: 30,
                          child: Text(episodeCharacters[index].name!)),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
