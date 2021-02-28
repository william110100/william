import 'package:flutter/material.dart';

class ThemeSwitcher extends InheritedWidget {
  final _ThemeSwitcherWidgetState data;

  const ThemeSwitcher({
    Key key,
    this.data,
    Widget child,
  }) : assert(child != null), super(key: key, child: child);

  static _ThemeSwitcherWidgetState of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<ThemeSwitcher>()).data;
  }

  @override
  bool updateShouldNotify(ThemeSwitcher old) {
    return this != old;
  }
}

class ThemeSwitcherWidget extends StatefulWidget {
  final bool initDarkModeOn;
  final Widget child;

  ThemeSwitcherWidget({Key key, this.initDarkModeOn, this.child})
  : assert(initDarkModeOn != null), assert(child != null), super(key: key);

  @override
  _ThemeSwitcherWidgetState createState() => _ThemeSwitcherWidgetState();
}

class _ThemeSwitcherWidgetState extends State<ThemeSwitcherWidget> {
  bool isDarkModeOn;

  void switchDarkMode() {
    setState(() {
      isDarkModeOn = !isDarkModeOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    isDarkModeOn = isDarkModeOn ?? widget.initDarkModeOn;
    return ThemeSwitcher(
      data: this,
      child: widget.child,
    );
  }
}

