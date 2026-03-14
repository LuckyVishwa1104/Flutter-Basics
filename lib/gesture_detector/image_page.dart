import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Page'),),
      body: Center(
        child: Text('redirected from Image', style: TextStyle(fontSize: 30),),
      ),
    );
  }
}