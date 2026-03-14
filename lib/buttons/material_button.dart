import 'package:flutter/material.dart';

class MyMaterialButton extends StatelessWidget {
  const MyMaterialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {}, child: Text('Click'),);
  }
}
