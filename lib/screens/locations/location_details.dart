import 'package:cached_network_image/cached_network_image.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:material_ui/material_ui.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(locationName!, overflow: TextOverflow.ellipsis),
      ),
      body: Query$LocationDetails$Widget(
        options: Options$Query$LocationDetails(
          variables: Variables$Query$LocationDetails(id: id ?? ''),
          fetchPolicy: FetchPolicy.cacheFirst,
        ),
        builder: (response, {fetchMore, refetch}) {
          if (response.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (response.hasException || response.parsedData?.location == null) {
            return Center(
              child: Text(response.exception?.toString() ?? 'No data found'),
            );
          }
          final residents = response.parsedData!.location!.residents!.toList();
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
                      'Location Type: $locationType',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      'Dimension: $locationDimension',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'Residents of $locationName',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Divider(),
                Wrap(
                  spacing: 6.0,
                  runSpacing: 6.0,
                  children: List<Widget>.generate(
                    residents.length,
                    (int index) => Chip(
                      avatar: CircleAvatar(
                        backgroundImage: CachedNetworkImageProvider(
                          residents[index]?.image ?? 'https://rickandmortyapi.com/api/character/avatar/19.jpeg',
                          scale: 1.5,
                        ),
                      ),
                      label: SizedBox(
                        height: 30,
                        child: Text(residents[index]?.name ?? ''),
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
