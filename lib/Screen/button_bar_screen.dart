import 'package:figma_task/Screen/record_screen.dart';
import 'package:figma_task/Screen/saved_screen.dart';
import 'package:figma_task/Screen/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'home_screen.dart';

class ButtonBarScreen extends StatefulWidget {
  const ButtonBarScreen({super.key});

  @override
  State<ButtonBarScreen> createState() => _ButtonBarScreenState();
}

class _ButtonBarScreenState extends State<ButtonBarScreen> {
  int _selectedIndex = 0;
  final List<Map<String, dynamic>> _pages = [
    {'page': HOmeScreen(), 'title': 'Home Screen'},
    {'page': SearchScreen(), 'title': 'Search Screen'},
    {'page': RecordScreen(), 'title': 'Record Screen'},
    {'page': SavedScreen(), 'title': 'Saved Screen'},
    {'page': HOmeScreen(), 'title': 'Home User'},
  ];
  void _selectePage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex]["page"],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _selectePage,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromARGB(222, 14, 66, 29),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
              icon: Icon(IconlyBold.video), label: "Record"),
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.bookmark),
            label: "Saved",
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.setting),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
