import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Page'),),
      body: Center(
        child: Text('Redirected form Text gesture', style: TextStyle(fontSize: 30),),
      ),
    );
  }
}