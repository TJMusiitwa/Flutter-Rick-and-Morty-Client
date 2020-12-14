import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ricky_n_morty/app_nav.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter();
  final HttpLink rickMortyLink =
      HttpLink('https://rickandmortyapi.com/graphql');

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: rickMortyLink,
      cache: GraphQLCache(
        store: HiveStore(),
      ),
    ),
  );
  runApp(MyApp(
    graphQLClient: client,
  ));
}

class MyApp extends StatelessWidget {
  final ValueNotifier<GraphQLClient> graphQLClient;

  const MyApp({Key key, this.graphQLClient}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: graphQLClient,
      child: MaterialApp(
          title: 'Rick and Morty App',
          theme: ThemeData.light().copyWith(
              primaryColor: Colors.white,
              accentColor: Colors.amberAccent,
              visualDensity: VisualDensity.adaptivePlatformDensity),
          darkTheme: ThemeData.dark().copyWith(
              accentColor: Colors.amberAccent,
              visualDensity: VisualDensity.adaptivePlatformDensity),
          themeMode: ThemeMode.system,
          home: Appnav()),
    );
  }
}
