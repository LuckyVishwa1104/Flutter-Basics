import 'package:flutter/material.dart';
import 'package:flutter_basics/bottom_navigton_demo/home_demo.dart';
import 'package:flutter_basics/bottom_navigton_demo/profile_demo.dart';
import 'package:flutter_basics/bottom_navigton_demo/setting_demo.dart';
import 'package:flutter_basics/components/custom_app_bar.dart';
import 'package:flutter_basics/components/custom_bottom_navbar.dart';
import 'package:flutter_basics/model/bottom_navbar_model.dart';

class PersistentNavbarDriver extends StatefulWidget {
  const PersistentNavbarDriver({super.key});

  @override
  State<PersistentNavbarDriver> createState() => _PersistentNavbarDriverState();
}

class _PersistentNavbarDriverState extends State<PersistentNavbarDriver> {
  int selectIndex = 0;

  final List<BottomNavbarModel> navBarTabList = [
    BottomNavbarModel(
      icon: Icons.home_outlined,
      selectedIcon: Icons.home,
      label: "HOME",
    ),
    BottomNavbarModel(
      icon: Icons.settings_outlined,
      selectedIcon: Icons.settings,
      label: "SETTINGS",
    ),
    BottomNavbarModel(
      icon: Icons.person_outline,
      selectedIcon: Icons.person,
      label: "PROFILE",
    ),
  ];

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
      appBar: const CustomAppBar(
        title: 'Main Screen',
        actions: [
          Icon(
            Icons.cloud_circle,
          ),
        ],
      ),

      // body
      body: Stack(
        children: [
          buildOffStageNavigator(0),
          buildOffStageNavigator(1),
          buildOffStageNavigator(2),
        ],
      ),

      // persistent nav bar with custom commponent
      bottomNavigationBar: CustomBottomNavbar(
        onTabTap: onTabTap,
        selectedIndex: selectIndex,
        tabList: navBarTabList,
      ),

      // Persistent Nav bar
      // bottomNavigationBar: NavigationBar(
      //   selectedIndex: selectIndex,
      //   onDestinationSelected: onTabTap,
      //   backgroundColor: Colors.black,

      //   // indicatorColor: Colors.white,
      //   // shadowColor: Color.fromARGB(255, 251, 92, 92),
      //   // surfaceTintColor: const Color.fromARGB(255, 251, 92, 92),
      //   destinations: const [
      //     // Home Tab
      //     NavigationDestination(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //       selectedIcon: Icon(Icons.home_filled),
      //     ),

      //     // Setting Tab
      //     NavigationDestination(
      //       icon: Icon(Icons.settings),
      //       label: 'SETTINGS',
      //       selectedIcon: Icon(
      //         Icons.settings_accessibility_outlined,
      //       ),
      //     ),

      //     // Profile Tab
      //     NavigationDestination(
      //       icon: Icon(Icons.person),
      //       label: 'PROFILE',
      //       selectedIcon: Icon(
      //         Icons.person_remove,
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
