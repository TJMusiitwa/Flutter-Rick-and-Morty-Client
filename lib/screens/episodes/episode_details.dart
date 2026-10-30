import 'package:cached_network_image/cached_network_image.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:material_ui/material_ui.dart';

import '../../graphql/episodeDetails.graphql.dart';

class EpisodeDetails extends StatelessWidget {
  final String? id, episodeTitle, episode, episodeDate;

  const EpisodeDetails({
    super.key,
    this.id,
    this.episodeTitle,
    this.episode,
    this.episodeDate,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(episodeTitle!, overflow: TextOverflow.ellipsis),
      ),
      body: Query$episodeDetails$Widget(
        options: Options$Query$episodeDetails(
          variables: Variables$Query$episodeDetails(id: id ?? ''),
          fetchPolicy: FetchPolicy.cacheFirst,
        ),
        builder: (response, {fetchMore, refetch}) {
          if (response.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (response.hasException || response.parsedData?.episode == null) {
            return Center(
              child: Text(response.exception?.toString() ?? 'No data found'),
            );
          }
          final episodeDetails = response.parsedData!.episode!;
          final episodeCharacters = episodeDetails.characters!.toList();
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  spacing: 10,
                  children: <Widget>[
                    Text(
                      'Episode $episode',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
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
                          episodeCharacters[index]!.image!,
                        ),
                      ),
                      label: SizedBox(
                        height: 30,
                        child: Text(episodeCharacters[index]!.name!),
                      ),
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
