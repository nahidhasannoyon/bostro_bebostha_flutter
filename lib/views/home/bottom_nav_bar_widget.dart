import 'package:fardin_project/views/home/favorite_page.dart';
import 'package:fardin_project/views/home/home_page.dart';
import 'package:fardin_project/views/home/recent_page.dart';
import 'package:flutter/material.dart';

import '../../controllers/style_controller.dart';
import 'setting_page.dart';

class BottomNavBarWidget extends StatefulWidget {
  static const routeName = '/bottom_nav_bar_widget';
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    FavoritePage(),
    RecentPage(),
    SettingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kSecondaryColor,
        selectedLabelStyle: const TextStyle(
          color: Colors.white,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
        ),
        selectedFontSize: 15,
        unselectedFontSize: 15,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/icons/home_icon.png'),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/icons/fav_icon.png'),
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/icons/calendar_icon.png'),
            ),
            label: 'Recent',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/icons/filter_icon.png'),
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
