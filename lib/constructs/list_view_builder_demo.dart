import 'package:flutter/material.dart';

class ListViewBuilderDemo extends StatelessWidget {
  const ListViewBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> containerColor = [
      Colors.purple,
      Colors.indigo,
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.orange,
      Colors.red,
    ];

    return Scaffold(
      appBar: AppBar(
        // foregrand and background color
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,

        // app bar title
        title: const Text(
          'ListViewBuilder',
          // title stying
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),

        // action button
        actions: const [
          Icon(
            Icons.face,
          )
        ],

        // action button padding
        actionsPadding: const EdgeInsets.only(right: 8),
      ),

      // drawer
      drawer: const Icon(Icons.grid_3x3),

      // body
      body: Container(
        decoration: const BoxDecoration(color: Colors.grey),
        padding: const EdgeInsets.all(10),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(color: Colors.white),
          height: 550,
          child: ListView.builder(
            itemCount: containerColor.length,
            itemBuilder: (context, index) {
              return Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: containerColor[index],
                  borderRadius: BorderRadius.circular(8),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
