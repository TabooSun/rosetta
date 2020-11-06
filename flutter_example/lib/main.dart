import 'package:flutter/material.dart';

import 'util/translation.dart';
import 'widget/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rosetta Flutter example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      localizationsDelegates: [
        Translation.delegate,
      ],
      supportedLocales: [
        const Locale("hu"),
        const Locale("en"),
        const Locale("fr"),
        const Locale("ru"),
        const Locale.fromSubtags(
          languageCode: "zh",
          scriptCode: "Hans",
          countryCode: "CN",
        ),
      ],
    );
  }
}
