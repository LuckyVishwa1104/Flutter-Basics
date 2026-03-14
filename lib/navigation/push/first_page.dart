import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/push/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  void moveNext(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SecondPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frist Page'),
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
