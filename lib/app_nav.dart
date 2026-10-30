import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
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
    final destinations = const [
      NavigationDestination(
        icon: Icon(Icons.people_outline),
        selectedIcon: Icon(Icons.people),
        label: 'Characters',
      ),
      NavigationDestination(
        icon: Icon(Icons.movie_outlined),
        selectedIcon: Icon(Icons.movie),
        label: 'Episodes',
      ),
      NavigationDestination(
        icon: Icon(Icons.place_outlined),
        selectedIcon: Icon(Icons.place),
        label: 'Locations',
      ),
    ];
    final content = IndexedStack(
      index: _currentIndex,
      children: const [
        CharactersNavigator(),
        EpisodesNavigator(),
        LocationsNavigator(),
      ],
    );
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) async {
        if (didPop) return;
        final navigator = _navigatorKeys[_currentIndex].currentState;
        if (navigator != null && navigator.canPop()) {
          navigator.pop();
        } else if (_currentIndex != 0) {
          setState(() => _currentIndex = 0);
        } else if (context.mounted) {
          await SystemNavigator.pop();
        }
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 600) {
            return Scaffold(
              body: Row(
                children: [
                  NavigationRail(
                    selectedIndex: _currentIndex,
                    onDestinationSelected: (index) =>
                        setState(() => _currentIndex = index),
                    labelType: NavigationRailLabelType.all,
                    destinations: [
                      for (final destination in destinations)
                        NavigationRailDestination(
                          icon: destination.icon,
                          selectedIcon: destination.selectedIcon,
                          label: Text(destination.label),
                        ),
                    ],
                  ),
                  Expanded(child: content),
                ],
              ),
            );
          }
          return Scaffold(
            body: content,
            bottomNavigationBar: NavigationBar(
              destinations: destinations,
              selectedIndex: _currentIndex,
              onDestinationSelected: (index) =>
                  setState(() => _currentIndex = index),
            ),
          );
        },
      ),
    );
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
          },
        );
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
          },
        );
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
          },
        );
      },
    );
  }
}
