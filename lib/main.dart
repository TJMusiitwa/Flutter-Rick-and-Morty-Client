import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ricky_n_morty/app_nav.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initClient();
  runApp(const MyApp());
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
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Rick and Morty App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
            useMaterial3: true,
            primaryColor: Colors.white,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            appBarTheme: const AppBarTheme(),
            colorScheme: const ColorScheme.light().copyWith(
                brightness: Brightness.light,
                primary: Colors.amber,
                secondary: Colors.amberAccent)),
        darkTheme: ThemeData.dark().copyWith(
            useMaterial3: true,
            colorScheme: const ColorScheme.dark()
                .copyWith(primary: Colors.amber, secondary: Colors.amberAccent),
            visualDensity: VisualDensity.adaptivePlatformDensity),
        themeMode: ThemeMode.dark,
        home: const Appnav());
  }
}
