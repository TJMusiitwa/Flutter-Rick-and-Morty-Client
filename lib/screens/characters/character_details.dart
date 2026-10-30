import 'package:cached_network_image/cached_network_image.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/material.dart';

import '../../design/app_theme.dart';
import '../../graphql/characterDetails.graphql.dart';

class CharacterDetails extends StatelessWidget {
  final String? id,
      characterName,
      characterGender,
      characterSpecies,
      characterImage;
  const CharacterDetails({
    super.key,
    this.id,
    this.characterName,
    this.characterGender,
    this.characterSpecies,
    this.characterImage,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(characterName ?? 'Character')),
    body: Query$characterDetails$Widget(
      options: Options$Query$characterDetails(
        variables: Variables$Query$characterDetails(id: id ?? ''),
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
      builder: (response, {fetchMore, refetch}) {
        if (response.isLoading && response.parsedData == null) {
          return const CatalogState(
            message: 'Loading character...',
            loading: true,
          );
        }
        final character = response.parsedData?.character;
        if (character == null) {
          return CatalogState(
            message: 'Could not load this character.',
            onRetry: () => refetch?.call(),
          );
        }
        return ListView(
          padding: const EdgeInsets.fromLTRB(24, 8, 24, 32),
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: AspectRatio(
                aspectRatio: 1.35,
                child: CachedNetworkImage(
                  imageUrl: character.image ?? '',
                  fit: BoxFit.cover,
                  errorWidget: (_, _, _) =>
                      const Icon(Icons.person_outline, size: 64),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              characterName ?? 'Unknown character',
              style: Theme.of(context).textTheme.headlineMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            Wrap(
              spacing: 32,
              runSpacing: 0,
              children: [
                DetailFact(label: 'Status', value: character.status ?? ''),
                DetailFact(label: 'Species', value: characterSpecies ?? ''),
                DetailFact(label: 'Gender', value: characterGender ?? ''),
                if ((character.type ?? '').isNotEmpty)
                  DetailFact(label: 'Type', value: character.type!),
              ],
            ),
            DetailFact(label: 'Origin', value: character.origin?.name ?? ''),
            DetailSection(
              title: 'Episodes',
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final episode in character.episode ?? [])
                    if (episode?.episode != null)
                      Chip(label: Text(episode!.episode!)),
                ],
              ),
            ),
          ],
        );
      },
    ),
  );
}
