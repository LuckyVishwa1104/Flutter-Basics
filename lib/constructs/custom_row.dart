import 'package:flutter/material.dart';
import 'package:flutter_basics/buttons/elevated_button.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key});

  void metho(Color clr) {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Row Manipulation',
          ),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Item1',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  backgroundColor: Colors.black54),
            ),
            MyElevatedbutton(onColorChanged: metho),
            const Text(
              'Hope U well',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  backgroundColor: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
