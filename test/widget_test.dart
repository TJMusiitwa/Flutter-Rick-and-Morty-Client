import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ricky_n_morty/design/app_theme.dart';

void main() {
  testWidgets('error state offers a working retry action', (tester) async {
    var retries = 0;
    await tester.pumpWidget(
      MaterialApp(
        theme: buildAppTheme(),
        home: Scaffold(
          body: CatalogState(
            message: 'Could not load characters.',
            onRetry: () => retries++,
          ),
        ),
      ),
    );
    expect(find.text('Could not load characters.'), findsOneWidget);
    await tester.tap(find.text('Try again'));
    expect(retries, 1);
  });

  testWidgets('catalog header exposes its settings action', (tester) async {
    var opened = false;
    await tester.pumpWidget(
      MaterialApp(
        theme: buildAppTheme(),
        home: Scaffold(
          body: CatalogHeader(
            title: 'Characters',
            subtitle: 'Meet the people of the multiverse.',
            onSettings: () => opened = true,
          ),
        ),
      ),
    );
    expect(find.text('Characters'), findsOneWidget);
    await tester.tap(find.byTooltip('Settings'));
    expect(opened, isTrue);
  });
}
