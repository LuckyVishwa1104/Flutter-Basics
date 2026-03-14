import 'package:flutter/material.dart';
import 'dart:math';

class MyElevatedbutton extends StatefulWidget {
  const MyElevatedbutton({super.key, required this.onColorChanged});
  final ValueChanged<Color> onColorChanged;

  @override
  State<MyElevatedbutton> createState() => _MyElevatedbuttonState();
}

class _MyElevatedbuttonState extends State<MyElevatedbutton> {
  Color buttonText = Colors.grey;
  List<Color> buttonTxt = [
    Colors.deepPurple,
    Colors.indigo,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.red,
  ];
  int min = 0;
  late int max = buttonTxt.length;

  void generateRandom(int mn, int mx) {
    Random rand = Random();
    buttonText = buttonTxt[rand.nextInt(mx)];
    widget.onColorChanged(buttonText);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          generateRandom(min, max);
        });
      },
      style: ElevatedButton.styleFrom(
        // button text color
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
        // button backgound color
        backgroundColor: buttonText,
        // shape of button - border of the button
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        // to adjust the hieght and weidth
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 18),
        // elevation: 4,  // to add shadow effect
      ).copyWith(
        // to change the color of on tap
        overlayColor:
            MaterialStateProperty.all(Colors.transparent),
      ),
      child: Text('Click'),
    );
  }
}
