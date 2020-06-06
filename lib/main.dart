import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:ricky_n_morty/app_nav.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

final String apiLink = 'https://rickandmortyapi.com/graphql';

class MyApp extends StatelessWidget {
  static final HttpLink rickMortyLink = HttpLink(uri: apiLink);

  final ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(link: rickMortyLink, cache: InMemoryCache()),
  );

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: CacheProvider(
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
      ),
    );
  }

  // static String createdDataIdFromObject(Object object) {
  //   if (object is Map<String, Object> &&
  //       object.containsKey('created') &&
  //       object.containsKey('id')) {
  //     return "${object['created']}/${object['id']}";
  //   }
  //   return null;
  // }

  // NormalizedInMemoryCache(
  //       dataIdFromObject: createdDataIdFromObject,
  //     ),
}
