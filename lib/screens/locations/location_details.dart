import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ricky_n_morty/graphql/locationDetails.data.gql.dart';
import 'package:ricky_n_morty/graphql/locationDetails.req.gql.dart';
import 'package:ricky_n_morty/graphql/locationDetails.var.gql.dart';

class LocationDetails extends StatelessWidget {
  final String? id, locationName, locationType, locationDimension;

  const LocationDetails(
      {Key? key,
      this.id,
      this.locationName,
      this.locationType,
      this.locationDimension})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final client = GetIt.I<Client>();
    return Scaffold(
      appBar: AppBar(
          title: Text(
        locationName!,
        overflow: TextOverflow.ellipsis,
      )),
      body: Operation(
        client: client,
        operationRequest: GLocationDetailsReq((d) => d
          ..vars.id = id
          ..fetchPolicy = FetchPolicy.CacheFirst),
        builder: (BuildContext context,
            OperationResponse<GLocationDetailsData, GLocationDetailsVars?>?
                response,
            Object? error) {
          if (response!.loading) {
            return Center(child: CircularProgressIndicator());
          }
          if (response.hasErrors) {}
          final residents = response.data!.location!.residents!.asList();
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
                                      index]
                                  .image ??
                              'https://rickandmortyapi.com/api/character/avatar/19.jpeg')),
                      label: Text(residents[index].name ?? ''),
                    );
                  }),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
