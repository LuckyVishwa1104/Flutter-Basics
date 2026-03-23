import 'package:flutter/material.dart';
import 'package:flutter_basics/bottom_navigton_demo/home_demo.dart';
import 'package:flutter_basics/bottom_navigton_demo/profile_demo.dart';
import 'package:flutter_basics/bottom_navigton_demo/setting_demo.dart';

class PersistentNavbarDriver extends StatefulWidget {
  const PersistentNavbarDriver({super.key});

  @override
  State<PersistentNavbarDriver> createState() => _PersistentNavbarDriverState();
}

class _PersistentNavbarDriverState extends State<PersistentNavbarDriver> {
  int selectIndex = 0;

  // navigation list
  List<GlobalKey<NavigatorState>> navigationKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  // onTap function
  void onTabTap(int index) {
    if (index == selectIndex) {
      // pop until first index
      navigationKeys[index].currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        selectIndex = index;
      });
    }
  }

  // Widget for routing
  Widget buildOffStageNavigator(int abc) {
    return Offstage(
      offstage: selectIndex != abc,
      child: Navigator(
        key: navigationKeys[abc],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (_) => getTab(
              abc,
            ),
          );
        },
      ),
    );
  }

  // Switch case for routing
  Widget getTab(int idx) {
    switch (idx) {
      case 0:
        return const HomeDemo();
      case 1:
        return const SettingDemo();
      case 2:
        return const ProfileDemo();
      default:
        return const HomeDemo();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        title: const Text(
          'App Main Screen',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Colors.black,
      ),

      // body
      body: Stack(
        children: [
          buildOffStageNavigator(0),
          buildOffStageNavigator(1),
          buildOffStageNavigator(2),
        ],
      ),

      // Persistent Nav bar
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectIndex,
        onDestinationSelected: onTabTap,
        backgroundColor: Colors.black,
        
        // indicatorColor: Colors.white,
        // shadowColor: Color.fromARGB(255, 251, 92, 92),
        // surfaceTintColor: const Color.fromARGB(255, 251, 92, 92),
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
