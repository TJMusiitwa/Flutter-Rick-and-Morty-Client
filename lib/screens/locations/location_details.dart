import 'package:cached_network_image/cached_network_image.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/material.dart';

import '../../design/app_theme.dart';
import '../../graphql/locationDetails.graphql.dart';

class LocationDetails extends StatelessWidget {
  final String? id, locationName, locationType, locationDimension;
  const LocationDetails({
    super.key,
    this.id,
    this.locationName,
    this.locationType,
    this.locationDimension,
  });
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Location')),
    body: Query$LocationDetails$Widget(
      options: Options$Query$LocationDetails(
        variables: Variables$Query$LocationDetails(id: id ?? ''),
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
      builder: (response, {fetchMore, refetch}) {
        if (response.isLoading && response.parsedData == null) {
          return const CatalogState(
            message: 'Loading location...',
            loading: true,
          );
        }
        final data = response.parsedData?.location;
        if (data == null) {
          return CatalogState(
            message: 'Could not load this location.',
            onRetry: () => refetch?.call(),
          );
        }
        final residents = data.residents ?? [];
        return ListView(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
          children: [
            Text(
              locationName ?? 'Location',
              style: Theme.of(context).textTheme.headlineMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            DetailFact(label: 'Type', value: locationType ?? ''),
            DetailFact(label: 'Dimension', value: locationDimension ?? ''),
            DetailSection(
              title: 'Residents',
              child: residents.isEmpty
                  ? const Text('No known residents.')
                  : Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        for (final resident in residents)
                          if (resident != null)
                            Chip(
                              avatar: CircleAvatar(
                                backgroundImage: resident.image == null
                                    ? null
                                    : CachedNetworkImageProvider(
                                        resident.image!,
                                      ),
                              ),
                              label: Text(resident.name ?? 'Unknown'),
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
