import 'package:flutter/material.dart';
import 'package:flutter_basics/bottom_navigton_demo/home_demo.dart';
import 'package:flutter_basics/bottom_navigton_demo/profile_demo.dart';
import 'package:flutter_basics/bottom_navigton_demo/setting_demo.dart';

class BottomNavDriver extends StatefulWidget {
  const BottomNavDriver({super.key});

  @override
  State<BottomNavDriver> createState() => _BottomNavDriverState();
}

class _BottomNavDriverState extends State<BottomNavDriver> {
  int _selectedIndex = 0;

  void _onTabTap(int idx) {
    setState(() {
      _selectedIndex = idx;
    });
  }

  final List<Widget> _tabPages = const [
    HomeDemo(),
    SettingDemo(),
    ProfileDemo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'APP Main Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black87,
      ),
      body: _tabPages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTabTap,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.amber,
        type: BottomNavigationBarType.fixed,
        items: const [
          // Home Tab
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            activeIcon: Icon(
              Icons.home_filled,
            ),
          ),

          // Setting Tab
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Setting',
            activeIcon: Icon(
              Icons.settings_accessibility,
            ),
          ),

          // Person/Profile Tab
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
            activeIcon: Icon(
              Icons.person_2,
            ),
          )
        ],
      ),
    );
  }
}
