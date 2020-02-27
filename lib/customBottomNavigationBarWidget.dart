import 'package:flutter/material.dart';

int _selectedIndex = 0;

class CustomBottomNavigationBarWidget extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      new _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState
    extends State<CustomBottomNavigationBarWidget> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              title: Text('Calendar')),
          BottomNavigationBarItem(
              icon: Icon(Icons.alarm_on),
              title: Text('Alarm')),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped);
    throw UnimplementedError();
  }
}
