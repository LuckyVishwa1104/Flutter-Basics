import 'package:flutter/material.dart';

class SettingDemo extends StatelessWidget {
  const SettingDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 243, 231, 231),
      child:const Center(
        child: Text(
          'Setting',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 45,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
            letterSpacing: 1.5,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
