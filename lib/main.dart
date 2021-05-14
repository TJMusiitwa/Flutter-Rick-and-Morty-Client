import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ricky_n_morty/app_nav.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initClient();
  runApp(MyApp());
}

Future<Client> initClient() async {
  await Hive.initFlutter();

  final box = await Hive.openBox("rickMortyBox");

  final store = HiveStore(box);

  final cache = Cache(store: store);

  final link = HttpLink('https://rickandmortyapi.com/graphql');

  final client = Client(
    link: link,
    cache: cache,
  );

  GetIt.I.registerSingleton<Client>(client);

  return client;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Rick and Morty App',
        theme: ThemeData.light().copyWith(
            primaryColor: Colors.white,
            primaryColorBrightness: Brightness.light,
            accentColor: Colors.amberAccent,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        darkTheme: ThemeData.dark().copyWith(
            accentColor: Colors.amberAccent,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        themeMode: ThemeMode.dark,
        home: Appnav());
  }
}
