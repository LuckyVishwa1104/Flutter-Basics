import 'package:flutter/material.dart';

class IconPage extends StatelessWidget {
  const IconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Icon Page'),),
      body: Center(
        child: Text('Redirect from icon Page', style: TextStyle(fontSize: 30),),
      ),
    );
  }
}