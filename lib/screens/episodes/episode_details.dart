import 'package:cached_network_image/cached_network_image.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/material.dart';

import '../../design/app_theme.dart';
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
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Episode')),
    body: Query$episodeDetails$Widget(
      options: Options$Query$episodeDetails(
        variables: Variables$Query$episodeDetails(id: id ?? ''),
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
      builder: (response, {fetchMore, refetch}) {
        if (response.isLoading && response.parsedData == null) {
          return const CatalogState(
            message: 'Loading episode...',
            loading: true,
          );
        }
        final data = response.parsedData?.episode;
        if (data == null) {
          return CatalogState(
            message: 'Could not load this episode.',
            onRetry: () => refetch?.call(),
          );
        }
        final characters = data.characters ?? [];
        return ListView(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
          children: [
            Text(
              data.episode ?? episode ?? '',
              style: Theme.of(context).textTheme.labelLarge
                  ?.copyWith(color: AppColors.accent),
            ),
            const SizedBox(height: 8),
            Text(
              data.name ?? episodeTitle ?? 'Episode',
              style: Theme.of(context).textTheme.headlineMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            DetailFact(
              label: 'Air date',
              value: data.air_date ?? episodeDate ?? '',
            ),
            DetailSection(
              title: 'Characters',
              child: characters.isEmpty
                  ? const Text('No characters listed.')
                  : Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        for (final character in characters)
                          if (character != null)
                            Chip(
                              avatar: CircleAvatar(
                                backgroundImage: character.image == null
                                    ? null
                                    : CachedNetworkImageProvider(
                                        character.image!,
                                      ),
                              ),
                              label: Text(character.name ?? 'Unknown'),
                            ),
                      ],
                    ),
            ),
          ],
        );
      },
    ),
  );
}
