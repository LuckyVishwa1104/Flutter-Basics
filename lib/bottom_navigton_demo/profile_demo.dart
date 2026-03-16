import 'package:flutter/material.dart';

class ProfileDemo extends StatelessWidget {
  const ProfileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 212, 196, 196),
      child: const Center(
        child: Text(
          'Sett',
          style: TextStyle(
            color: Colors.green,
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
