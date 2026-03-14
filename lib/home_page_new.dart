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
          title: const Text(
            'New App Bar',
            style: TextStyle(fontSize: 25),
          ),
          backgroundColor: const Color.fromARGB(255, 227, 226, 226),
          foregroundColor: const Color.fromARGB(255, 117, 39, 32),
          // centerTitle: true,
          // titleTextStyle: const TextStyle(fontFamily: 'Roboto',),
        ),

        // Drawer
        drawer: const Icon(
          Icons.grid_3x3,
        ),

        // Body -
        body: const Column(
          // column take all available height and take max width of tis children
          

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.stretch,

          // check for - spaceAround
          
          children: [
            
            Text(
              'Good Afternoon Flutter',
              style: TextStyle(
                fontSize: 30,  // to control the size of the text
                fontWeight: FontWeight.w700, // to contorl the thickness of the text
                fontStyle: FontStyle.italic, // to cpontrol the font style of the text (italic, normal)
                color: Colors.red, // to change the color of the text
                letterSpacing: 2.3, // to provide spacing between the character of the text
                wordSpacing: 4, // to provide spaceing between the words of the text
                decoration: TextDecoration.overline, // to add line to the text (under, over, inline)
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
        
            Text(
              'Good Morning Flutter',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.normal,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
        
            Text(
              'Good Night Flutter',
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
                color: Colors.blue,
                letterSpacing: 3,
                wordSpacing: 2,
                decoration: TextDecoration.underline,
              ),
            ),
        
          ],
        ),
      ),
    );
  }
}


