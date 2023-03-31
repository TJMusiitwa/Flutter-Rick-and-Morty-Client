import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ricky_n_morty/screens/characters/character_details.dart';
import 'package:ricky_n_morty/screens/characters/characters_screen.dart';
import 'package:ricky_n_morty/screens/episodes/episode_details.dart';
import 'package:ricky_n_morty/screens/episodes/episodes_screen.dart';
import 'package:ricky_n_morty/screens/locations/location_details.dart';
import 'package:ricky_n_morty/screens/locations/locations.dart';

GlobalKey<NavigatorState> _charactersNavigatorKey = GlobalKey<NavigatorState>();

GlobalKey<NavigatorState> _episodesNavigatorKey = GlobalKey<NavigatorState>();

GlobalKey<NavigatorState> _locationsNavigatorKey = GlobalKey<NavigatorState>();

List<GlobalKey<NavigatorState>> _navigatorKeys = [
  _charactersNavigatorKey,
  _episodesNavigatorKey,
  _locationsNavigatorKey,
];

class Appnav extends StatefulWidget {
  const Appnav({super.key});

  @override
  State<Appnav> createState() => _AppnavState();
}

class CharactersNavigator extends StatefulWidget {
  const CharactersNavigator({super.key});

  @override
  State<CharactersNavigator> createState() => _CharactersNavigatorState();
}

class EpisodesNavigator extends StatefulWidget {
  const EpisodesNavigator({super.key});

  @override
  State<EpisodesNavigator> createState() => _EpisodesNavigatorState();
}

class LocationsNavigator extends StatefulWidget {
  const LocationsNavigator({super.key});

  @override
  State<LocationsNavigator> createState() => _LocationsNavigatorState();
}

class _AppnavState extends State<Appnav> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _systemBackButtonPressed,
      child: Scaffold(
        body: SafeArea(
            top: false,
            child: IndexedStack(
              index: _currentIndex,
              children: const <Widget>[
                CharactersNavigator(),
                EpisodesNavigator(),
                LocationsNavigator()
              ],
            )),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Characters',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_movies),
              label: 'Episodes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Locations',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }

  Future<bool> _systemBackButtonPressed() async {
    if (_navigatorKeys[_currentIndex].currentState!.canPop()) {
      _navigatorKeys[_currentIndex]
          .currentState!
          .pop(_navigatorKeys[_currentIndex].currentContext);
    } else {
      SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
    }
    return false;
  }
}

class _CharactersNavigatorState extends State<CharactersNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _charactersNavigatorKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (context) {
              switch (settings.name) {
                case '/':
                  return const CharactersScreen();
                case '/characterDetails':
                  return const CharacterDetails();
              }
              throw {};
            });
      },
    );
  }
}

class _EpisodesNavigatorState extends State<EpisodesNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _episodesNavigatorKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (context) {
              switch (settings.name) {
                case '/':
                  return const EpisodesScreen();
                case '/episodesDetails':
                  return const EpisodeDetails();
              }
              throw {};
            });
      },
    );
  }
}

class _LocationsNavigatorState extends State<LocationsNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _locationsNavigatorKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (context) {
              switch (settings.name) {
                case '/':
                  return const LocationsScreen();
                case '/locationsDetails':
                  return const LocationDetails();
              }
              throw {};
            });
      },
    );
  }
}
