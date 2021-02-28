import 'package:william/configurations/themes.dart';
import 'package:william/pages/home.dart';
import 'package:william/widgets/themes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initDarkModeOn: false,
      child: William(),
    );
  }
}

class William extends StatelessWidget {
  const William({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'William',
      theme: ThemeSwitcher.of(context).isDarkModeOn ? darkTheme(context) : lightTheme(context),
      home: HomePage(),
    );
  }
}