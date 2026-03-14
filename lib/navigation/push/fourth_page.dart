import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/push/first_page.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  void moveNext(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const FirstPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fourth Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: ()=> moveNext(context),
          child:const Text('Next Page'),
        ),
      ),
    );
  }
}
