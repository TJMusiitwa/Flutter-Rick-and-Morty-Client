import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'This application is built using The Rick and Morty API in particular the GraphQL API and the Flutter framework.It will give you access to about hundreds of characters, images, locations and episodes. The Rick and Morty API is filled with canonical information as seen on the TV show.',
              softWrap: true,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              'Rick and Morty is created by Justin Roiland and Dan Harmon for Adult Swim. The data and images are used without claim of ownership and belong to their respective owners.',
              softWrap: true,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ListTile(
              title: Text('The Rick and Morty API'),
              subtitle: Text('https://rickandmortyapi.com/'),
              trailing: IconButton(
                  icon: Icon(Icons.open_in_new),
                  onPressed: () async => launch(
                        'https://rickandmortyapi.com/',
                      )),
            ),
            ListTile(
              title: Text('Github link for the app'),
              subtitle: Text('https://github.com/TJMusiitwa'),
              trailing: IconButton(
                  icon: Icon(Icons.open_in_new),
                  onPressed: () async => launch(
                        'https://github.com/TJMusiitwa',
                      )),
            ),
            ListTile(
              title: Text('Open sources licenses'),
              onTap: () => showLicensePage(
                  context: context,
                  applicationName: 'Rick and Morty App',
                  applicationVersion: '0.0.1'),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: <Widget>[
                  Text('Created by Jonathan Thomas Musiitwa',
                      style: Theme.of(context).textTheme.overline),
                  Text(
                    'Built with ❤ in Flutter ',
                    style: Theme.of(context)
                        .textTheme
                        .overline!
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
