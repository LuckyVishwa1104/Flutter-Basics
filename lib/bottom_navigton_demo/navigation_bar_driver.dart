import 'package:flutter/material.dart';
import 'package:flutter_basics/bottom_navigton_demo/home_demo.dart';
import 'package:flutter_basics/bottom_navigton_demo/profile_demo.dart';
import 'package:flutter_basics/bottom_navigton_demo/setting_demo.dart';

class NavigationBarDriver extends StatefulWidget {
  const NavigationBarDriver({super.key});

  @override
  State<NavigationBarDriver> createState() => _NavigationBarDriverState();
}

class _NavigationBarDriverState extends State<NavigationBarDriver> {
  int _selectIndex = 0;

  void _onTap(int idx) {
    setState(() {
      _selectIndex = idx;
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
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.black87,
      ),
      body: IndexedStack(
        index: _selectIndex,
        children: _tabPages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectIndex,
        onDestinationSelected: _onTap,
        height: 70,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        animationDuration: const Duration(milliseconds: 400),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'HOME',
            selectedIcon: Icon(Icons.home_filled),
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'SETTING',
            selectedIcon: Icon(
              Icons.settings_accessibility,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'PERSON',
            selectedIcon: Icon(Icons.person_2_rounded),
          ),
        ],
      ),
    );
  }
}
