import 'package:flutter/material.dart';

class PersistentNavbarDriver extends StatefulWidget {
  const PersistentNavbarDriver({super.key});

  @override
  State<PersistentNavbarDriver> createState() => _PersistentNavbarDriverState();
}

class _PersistentNavbarDriverState extends State<PersistentNavbarDriver> {
  int selectIndex = 0;

  // navigation list
  List <GlobalKey<NavigatorState>> navigationKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  // onTap function 
  void onTabTap(int index){
    selectIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App Main Screen',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Colors.black,
      ),

      // body
      body: Placeholder(),

      // Persistent Nav bar
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectIndex,

        destinations: const [
          // Home Tab
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
            selectedIcon: Icon(Icons.home_filled),
          ),

          // Setting Tab
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'SETTINGS',
            selectedIcon: Icon(
              Icons.settings_accessibility_outlined,
            ),
          ),

          // Profile Tab
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'PROFILE',
            selectedIcon: Icon(
              Icons.person_remove,
            ),
          )
        ],
      ),
    );
  }
}
