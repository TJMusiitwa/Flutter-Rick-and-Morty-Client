import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ricky_n_morty/graphql/allLocations.data.gql.dart';
import 'package:ricky_n_morty/graphql/allLocations.req.gql.dart';
import 'package:ricky_n_morty/graphql/allLocations.var.gql.dart';
import 'package:ricky_n_morty/screens/settings_screen.dart';

import 'location_details.dart';

class LocationsScreen extends StatefulWidget {
  const LocationsScreen({super.key});

  @override
  State<LocationsScreen> createState() => _LocationsScreenState();
}

class _LocationsScreenState extends State<LocationsScreen> {
  final Client? client = GetIt.I<Client>();

  final locationsReq = GallLocationsReq((l) => l
    ..requestId = 'getLocationsId'
    ..fetchPolicy = FetchPolicy.CacheFirst
    ..vars.page = pageNum);

  static int pageNum = 1;

  final ScrollController _scrollController = ScrollController();

  _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      final paginationLocs = locationsReq.rebuild(
        (p) => p
          ..vars.page = pageNum
          ..updateResult = (previous, next) =>
              previous?.rebuild((p) =>
                  p..locations.results.addAll(next!.locations!.results!)) ??
              next,
      );
      client!.requestController.add(paginationLocs);
      setState(() {
        pageNum++;
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
        title: const Text('Locations'),
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
        operationRequest: locationsReq,
        builder: (BuildContext context,
            OperationResponse<GallLocationsData, GallLocationsVars?>? response,
            Object? error) {
          if (response!.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (response.hasErrors) {
            return Text(response.graphqlErrors!.first.message);
          }

          if (response.data!.locations == null) {
            return const Center(
              child: Text('Uhh Rick, There are no locations here'),
            );
          }

          final locations = response.data!.locations!.results!.toBuiltList();
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
                    location.name!,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 20),
                  ),
                  subtitle: Text(
                    'Dimension: ${location.dimension!}',
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                  trailing: Text(location.type!),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => LocationDetails(
                        id: location.id,
                        locationName: location.name,
                        locationDimension: location.dimension,
                        locationType: location.type,
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
