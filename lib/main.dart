import 'package:flutter/material.dart';
import 'package:flutter_basics/bottom_navigton_demo/bottom_nav_driver.dart';
import 'package:flutter_basics/bottom_navigton_demo/navigation_bar_driver.dart';
import 'package:flutter_basics/bottom_navigton_demo/persistent_navbar_driver.dart';
import 'package:flutter_basics/constructs/custom_column_demo.dart';
import 'package:flutter_basics/constructs/custom_container.dart';
import 'package:flutter_basics/constructs/custom_container_demo.dart';
import 'package:flutter_basics/constructs/custom_row.dart';
import 'package:flutter_basics/constructs/custom_row_demo.dart';
import 'package:flutter_basics/home_page_new.dart';
import 'package:flutter_basics/hone_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 

    // const CustomRow();

    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
      ),
      home: const CustomColumnDemo(),
    );
  }
}
