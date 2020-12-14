import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ricky_n_morty/api_queries/graph_queries.dart'
    show getAllLocations;
import 'package:ricky_n_morty/screens/locations/location_details.dart';
import 'package:ricky_n_morty/screens/settings_screen.dart';

class LocationsScreen extends StatefulWidget {
  @override
  _LocationsScreenState createState() => _LocationsScreenState();
}

class _LocationsScreenState extends State<LocationsScreen> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
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
              document: gql(getAllLocations), variables: {"page": 1}),
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
                child: Text('Uhh Rick, There are no locations here'),
              );
            }

            final List locations = result.data['locations']['results'];
            final int nextPage = result.data['locations']['info']['next'];

            FetchMoreOptions fetchMoreLocations = FetchMoreOptions(
                variables: {'page': nextPage},
                updateQuery: (existing, newLocations) => ({
                      'locations': {
                        'page': newLocations['info']['next'],
                        'locations': [
                          ...existing['locations']['results'],
                          ...newLocations['locations']['results']
                        ],
                      }
                    }));

            ScrollController _scrollController = ScrollController();
            _scrollController.addListener(() {
              if (_scrollController.position.maxScrollExtent ==
                  _scrollController.position.pixels) {
                if (!isLoading) {
                  isLoading = !isLoading;
                  fetchMore(fetchMoreLocations);
                }
              }
            });

            return ListView.builder(
              controller: _scrollController,
              itemCount: locations.length,
              itemBuilder: (BuildContext context, int index) {
                final location = locations[index];
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                      title: Text(
                        location['name'],
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            .copyWith(fontSize: 20),
                      ),
                      subtitle: Text(
                        'Dimension: ' + location['dimension'],
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Text(location['type']),
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => LocationDetails(
                                id: location['id'],
                                locationName: location['name'],
                                locationDimension: location['dimension'],
                                locationType: location['type'],
                              )))
                      // Navigator.pushNamed(context, '/locationsDetails',
                      //     arguments: LocationDetails(
                      //       locationID: location['id'],
                      //       locationName: location['name'],
                      //     )),
                      ),
                );
              },
            );
          }),
    );
  }
}
