import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/push_replacement/first_page.dart';

class PushReplacement extends StatelessWidget {
  const PushReplacement({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}