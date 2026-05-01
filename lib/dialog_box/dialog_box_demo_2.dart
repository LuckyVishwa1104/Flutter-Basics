import 'package:flutter/material.dart';

class DialogBoxDemo2 extends StatelessWidget {
  const DialogBoxDemo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        title: const Text(
          'Dialog box',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
        ),

        actions: const [
          Icon(Icons.share, size: 30,)
        ],

        actionsPadding: const EdgeInsets.only(right: 10),
      ),

      // drawer
      drawer: const Icon(Icons.grid_3x3),

      // body
      body: Scaffold(),

      
    );
  }
}
