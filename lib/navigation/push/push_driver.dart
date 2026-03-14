import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/push/first_page.dart';

class NavigationDriver extends StatelessWidget {
  const NavigationDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}