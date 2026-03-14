import 'package:flutter/material.dart';
import 'package:flutter_basics/buttons/icon_button.dart';

class CustomColumn extends StatefulWidget {
  const CustomColumn({super.key});

  @override
  State<CustomColumn> createState() => _CustomColumnState();
}

class _CustomColumnState extends State<CustomColumn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Column Manipulation'),
          backgroundColor: Colors.blue,
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          
          children: [
            Text(    
              'Item1',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  backgroundColor: Colors.black54),
            ),
            // const SizedBox(
            //   height: 25.0,
            // ),
            // MyElevatedbutton(onColorChanged: _handleColorChanged)
            MyIconButton(),
            // const SizedBox(
            //   height: 25.0,
            // ),
            Text(
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
