import 'package:flutter/material.dart';

class HomePageNew extends StatelessWidget {
  const HomePageNew({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        // App Bar - 
        appBar: AppBar(
          title: const Text('New App Bar', style: TextStyle(fontSize: 25),),
          backgroundColor: const Color.fromARGB(255, 227, 226, 226),
          foregroundColor: const Color.fromARGB(255, 117, 39, 32),
          // centerTitle: true,
          // titleTextStyle: const TextStyle(fontFamily: 'Roboto',),
        ),

        // Drawer
        drawer: const Icon(Icons.grid_3x3,),

        // Body -
        

      ),
    );
  }
}


