import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../graphql/__generated__/characterDetails.data.gql.dart';
import '../../graphql/__generated__/characterDetails.req.gql.dart';
import '../../graphql/__generated__/characterDetails.var.gql.dart';

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
  Widget build(BuildContext context) {
    final client = GetIt.I<Client>();
    return Scaffold(
      body: Operation(
        client: client,
        operationRequest: GcharacterDetailsReq(
          (d) =>
              d
                ..vars.id = id
                ..fetchPolicy = FetchPolicy.CacheFirst,
        ),
        builder: (
          BuildContext context,
          OperationResponse<GcharacterDetailsData, GcharacterDetailsVars?>?
          response,
          Object? error,
        ) {
          if (response!.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          final characterDetails = response.data!.character!;
          final characterEpisodes = characterDetails.episode!.asList();
          return CustomScrollView(
            slivers: <Widget>[
              SliverSafeArea(
                top: false,
                sliver: SliverAppBar(
                  pinned: true,
                  floating: true,
                  expandedHeight: 300,
                  //automaticallyImplyLeading: true,
                  leading: const BackButton(color: Colors.amber),
                  elevation: 0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Hero(
                      tag: characterDetails.id!,
                      child: CachedNetworkImage(
                        imageUrl: characterDetails.image!,
                        fit: BoxFit.cover,
                        colorBlendMode: BlendMode.darken,
                        color: Colors.black12,
                      ),
                    ),
                    title: Text(characterName!),
                    centerTitle: true,
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 10.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              const Text('STATUS'),
                              Text(characterDetails.status!),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              const Text('SPECIES'),
                              Text(characterSpecies!),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              const Text('GENDER'),
                              Text(characterGender!),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              const Text('TYPE'),
                              Text(characterDetails.type ?? ''),
                            ],
                          ),
                        ],
                      ),

                      Text(
                        'Home Planet 🌍:  ${characterDetails.origin!.name}',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),

                      Text(
                        'Episodes with $characterName',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const Divider(),
                      Wrap(
                        spacing: 10,
                        runSpacing: 6,
                        children: List<Widget>.generate(
                          characterEpisodes.length,
                          (index) => Chip(
                            label: Text(
                              characterEpisodes[index]?.episode ?? '',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
