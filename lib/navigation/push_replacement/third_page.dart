import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/push_replacement/fourth_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});
  void moveNext(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) =>const FourthPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => moveNext(context),
          child: const Text("Next Page"),
        ),
      ),
    );
  }
}
