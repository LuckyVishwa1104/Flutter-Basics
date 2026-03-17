import 'package:flutter/material.dart';

class SettingDemo extends StatelessWidget {
  const SettingDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: 70,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colors.purple,
            ),
          ),
          SizedBox(height: 15,
          ),
          Container(
            height: 25,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colors.indigo,
            ),
          ),
           SizedBox(height: 15,
          ),
          Container(
            height: 45,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colors.green,
            ),
          ),
           SizedBox(height: 15,
          ),
          Container(
            height: 30,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colors.orange,
            ),
          ),
           SizedBox(height: 15,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
      
      // Center(
      //   child: 
      //   Text(
      //     'Setting',
      //     style: TextStyle(
      //       color: Colors.blue,
      //       fontSize: 45,
      //       fontWeight: FontWeight.w600,
      //       fontStyle: FontStyle.normal,
      //       letterSpacing: 1.5,
      //       decoration: TextDecoration.underline,
      //     ),
      //   ),
      // ),

  }
}
