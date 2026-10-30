import 'package:cached_network_image/cached_network_image.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:material_ui/material_ui.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Query$characterDetails$Widget(
        options: Options$Query$characterDetails(
          variables: Variables$Query$characterDetails(id: id ?? ''),
          fetchPolicy: FetchPolicy.cacheFirst,
        ),
        builder: (response, {fetchMore, refetch}) {
          if (response.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (response.hasException || response.parsedData?.character == null) {
            return Center(
              child: Text(response.exception?.toString() ?? 'No data found'),
            );
          }
          final characterDetails = response.parsedData!.character!;
          final characterEpisodes = characterDetails.episode!.toList();
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
