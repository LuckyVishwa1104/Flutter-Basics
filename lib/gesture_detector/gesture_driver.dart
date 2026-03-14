import 'package:flutter/material.dart';
import 'package:flutter_basics/constructs/custom_container.dart';
import 'package:flutter_basics/gesture_detector/gesture_page.dart';
import 'package:flutter_basics/gesture_detector/icon_page.dart';
import 'package:flutter_basics/gesture_detector/image_page.dart';
import 'package:flutter_basics/gesture_detector/text_page.dart';

class GestureDriver extends StatelessWidget {
  const GestureDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GesturePage(),
      routes: {
        '/imagePage' : (context) => ImagePage(),
        '/iconPage' : (context) => IconPage(),
        '/textPage' : (context) => CustomContainer(),
      },
    );
  }
}