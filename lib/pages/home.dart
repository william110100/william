import 'package:william/tabs/about.dart';
import 'package:william/widgets/themes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> widgetTabs = <Widget>[About()];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: ThemeSwitcher.of(context).isDarkModeOn ? Icon(Icons.wb_sunny) : Icon(Icons.wc),
            onPressed: () => ThemeSwitcher.of(context).switchDarkMode(),
          )
        ],
      ),
      body: Center(
        child: widgetTabs.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('About')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chrome_reader_mode),
            title: Text('Blog')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mobile_screen_share),
            title: Text('Projects')
          )
        ],
        currentIndex: selectedIndex,
        onTap: (index) => setState(() => selectedIndex = index),
        selectedItemColor: Theme.of(context).accentColor,
      ),
    );
  }
}