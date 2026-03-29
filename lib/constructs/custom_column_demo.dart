import 'package:flutter/material.dart';

class CustomColumnDemo extends StatelessWidget {
  const CustomColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actionsPadding: const EdgeInsets.only(
          right: 5,
        ),
        title: const Text(
          'Column Layout',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const [
          Icon(
            Icons.dark_mode,
          ),
        ],
      ),

      // drawer
      drawer: const Icon(
        Icons.grid_3x3,
      ),

      // body
      body: Column(
        children: [

          // 1st children
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
          ),

          // 2nd children
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
          ),

          // 3rd children
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
          )
        ],
        
      ),
    );
  }
}
