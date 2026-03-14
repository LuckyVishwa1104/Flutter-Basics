import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/pop_until/home_page.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  void moveHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePagePop(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Initial Screen'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => moveHome(context),
            child:const Text('Go to Home Screen')),
      ),
    );
  }
}
