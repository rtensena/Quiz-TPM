import 'package:flutter/material.dart';
import 'package:kuiz/DataDiri.dart';
import 'package:kuiz/HariPage.dart';
import 'package:kuiz/Kubus.dart';
import 'package:kuiz/Trapesium.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _selectedIndex = 0; // Index of the currently selected tab

  // Define the pages corresponding to each tab
  final List<Widget> _pages = [
    DataDiri(),
    Trapesium(),
    Kubus(),
    HariPage(),
  ];

  // Function to handle tab selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Color.fromARGB(255, 60, 81, 201),
            label: 'Data Diri',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            backgroundColor: Color.fromARGB(255, 60, 81, 201),
            label: 'Trapesium',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.crop_square_sharp),
            backgroundColor: Color.fromARGB(255, 60, 81, 201),
            label: 'Kubus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            backgroundColor: Color.fromARGB(255, 60, 81, 201),
            label: 'Hari',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
