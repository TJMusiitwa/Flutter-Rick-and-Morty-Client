import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class LocationDetails extends StatelessWidget {
  final String id, locationName, locationType, locationDimension;

  const LocationDetails(
      {Key key,
      this.id,
      this.locationName,
      this.locationType,
      this.locationDimension})
      : super(key: key);

  final String getLocationDetails = """
query LocationDetails(\$id: ID!) {
  location(id: \$id) {
    id
    type
    dimension
    residents {
      name
      image
    }
  }
}
""";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        locationName,
        overflow: TextOverflow.ellipsis,
      )),
      body: Query(
          options: QueryOptions(
              document: gql(getLocationDetails),
              variables: {"id": int.tryParse(id)}),
          builder: (QueryResult result,
              {VoidCallback refetch, FetchMore fetchMore}) {
            if (result.isLoading) {
              return Center(child: CircularProgressIndicator());
            }
            if (result.hasException) {}
            final List residents = result.data['location']['residents'];
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Location Type: $locationType'),
                      Text('Dimension: $locationDimension'),
                    ],
                  ),
                  Text('Residents of $locationName'),
                  Divider(),
                  Wrap(
                    spacing: 6.0,
                    runSpacing: 6.0,
                    children:
                        List<Widget>.generate(residents.length, (int index) {
                      return Chip(
                        avatar: CircleAvatar(
                            backgroundImage: CachedNetworkImageProvider(residents[
                                    index]['image'] ??
                                'https://rickandmortyapi.com/api/character/avatar/19.jpeg')),
                        label: Text(residents[index]['name'] ?? ''),
                      );
                    }),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
