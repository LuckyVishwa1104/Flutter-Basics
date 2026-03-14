import 'package:flutter/material.dart';
import 'package:flutter_basics/home_page_new.dart';
import 'package:flutter_basics/hone_page.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const HomePageNew();
  }
}
