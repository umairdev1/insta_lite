import 'package:flutter/material.dart';
import 'package:insta_lite/view/home_view/home_view.dart';

import '../../utilis/colors.dart';
import '../profile_view/profile_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    Text(
      'Analytics',
      style: optionStyle,
    ),
    Text(
      'Quris',
      style: optionStyle,
    ),
    Text(
      'History',
      style: optionStyle,
    ),
    ProfileView(),
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
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner_outlined),
            label: 'Quris',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.highlight_alt_sharp),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kprimaryClr,
        unselectedItemColor: klightgreyClr,
        onTap: _onItemTapped,
      ),
    );
  }
}
