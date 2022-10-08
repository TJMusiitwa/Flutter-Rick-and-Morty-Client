import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'This application is built using The Rick and Morty API in particular the GraphQL API and the Flutter framework.\nIt will give you access to about hundreds of characters, images, locations and episodes. The Rick and Morty API is filled with canonical information as seen on the TV show.',
              softWrap: true,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              'Rick and Morty is created by Justin Roiland and Dan Harmon for Adult Swim. The data and images are used without claim of ownership and belong to their respective owners.',
              softWrap: true,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            ListTile(
              title: const Text('The Rick and Morty API'),
              subtitle: const Text('https://rickandmortyapi.com/'),
              trailing: IconButton(
                  icon: const Icon(Icons.open_in_new),
                  onPressed: () async => launchUrlString(
                        'https://rickandmortyapi.com/',
                      )),
              onTap: () {
                Clipboard.setData(const ClipboardData(
                        text: 'https://rickandmortyapi.com/'))
                    .whenComplete(() => ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(
                            content: Text('URL copied to clipboard'))));
              },
            ),
            ListTile(
              title: const Text('Github link for the app'),
              subtitle: const Text(
                  'https://github.com/TJMusiitwa/Flutter-Rick-and-Morty-Client'),
              trailing: IconButton(
                  icon: const Icon(Icons.open_in_new),
                  onPressed: () async => launchUrlString(
                        'https://github.com/TJMusiitwa/Flutter-Rick-and-Morty-Client',
                      )),
              onTap: () {
                Clipboard.setData(const ClipboardData(
                        text:
                            'https://github.com/TJMusiitwa/Flutter-Rick-and-Morty-Client'))
                    .whenComplete(() => ScaffoldMessenger.of(context)
                        .showSnackBar(const SnackBar(
                            content: Text('Github link copied to clipboard'))));
              },
            ),
            ListTile(
              title: const Text('Open sources licenses'),
              onTap: () => showLicensePage(
                  context: context,
                  applicationName: 'Rick and Morty App',
                  applicationVersion: '3.0.0'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: <Widget>[
                  Text('Created by Jonathan Thomas Musiitwa',
                      style: Theme.of(context).textTheme.labelSmall),
                  Text(
                    'Built with ❤ in Flutter ',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
