import 'package:cached_network_image/cached_network_image.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ricky_n_morty/graphql/allCharacters.data.gql.dart';
import 'package:ricky_n_morty/graphql/allCharacters.req.gql.dart';
import 'package:ricky_n_morty/graphql/allCharacters.var.gql.dart';
import 'package:ricky_n_morty/screens/settings_screen.dart';

import 'character_details.dart';

class CharactersScreen extends StatefulWidget {
  static int pageNum = 1;

  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  final Client? client = GetIt.I<Client>();

  final charactersRequest = GallCharactersReq((c) => c
    ..requestId = 'getCharactersId'
    ..vars.page = CharactersScreen.pageNum);

  final ScrollController _scrollController = ScrollController();

  _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      final paginationChars = charactersRequest.rebuild(
        (p) => p
          ..vars.page = CharactersScreen.pageNum + 1
          ..updateResult = (previous, next) => previous!.rebuild(
              (p) => p..characters.results.addAll(next!.characters!.results!)),
      );
      client!.requestController.add(paginationChars);
      setState(() {
        CharactersScreen.pageNum++;
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
        title: const Text('Characters'),
        automaticallyImplyLeading: false,
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
        operationRequest: charactersRequest,
        builder: (BuildContext context,
            OperationResponse<GallCharactersData, GallCharactersVars?>?
                response,
            Object? error) {
          if (response!.loading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (response.hasErrors) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                response.graphqlErrors!.first.message,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              ),
              action: SnackBarAction(label: 'RETRY', onPressed: () {}),
              behavior: SnackBarBehavior.fixed,
            ));
          }

          if (response.data!.characters == null) {
            return Column(
              children: [
                Center(
                  child: Image.asset('assets/rick_mort_splash.png'),
                ),
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    'Uhh Morty, you do know there is nothing but junk to watch on TV',
                    softWrap: true,
                  ),
                ),
              ],
            );
          }
          final characters = response.data!.characters!.results!.toBuiltList();
          return ListView.builder(
            controller: _scrollController,
            itemCount: characters.length,
            //itemExtent: 10,
            itemBuilder: (BuildContext context, int index) {
              final character = characters[index];
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  leading: SizedBox(
                    height: 100,
                    width: 80,
                    child: CachedNetworkImage(
                      imageUrl: character.image!,
                      fit: BoxFit.cover,
                      //fadeInDuration: Duration(milliseconds: 500),
                    ),
                  ),
                  title: Text(
                    character.name!,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  subtitle: Text(character.species!),
                  trailing: Text(character.gender!),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => CharacterDetails(
                        id: character.id,
                        characterName: character.name,
                        characterGender: character.gender,
                        characterSpecies: character.species,
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
