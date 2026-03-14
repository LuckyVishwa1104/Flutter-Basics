import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/push/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  void moveNext(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ThirdPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
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
