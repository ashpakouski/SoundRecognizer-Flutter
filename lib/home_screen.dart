import 'package:flutter/material.dart';
import 'package:sound_recognizer/screens/recognizer_screen.dart';
import 'package:sound_recognizer/screens/recorder_screen.dart';
import 'package:sound_recognizer/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  static const List<Widget> _widgetOptions = <Widget>[
    RecorderScreen(),
    RecognizerScreen(),
    SettingsScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.mic),
            label: 'Recording',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq),
            label: 'Recognition',
            //title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            //title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
