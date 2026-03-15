import 'package:flutter/material.dart';

class HomePageNew extends StatefulWidget {
  const HomePageNew({super.key});

  @override
  State<HomePageNew> createState() => _HomePageNewState();
}

class _HomePageNewState extends State<HomePageNew> {
  int currentIndexNew = 1;

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
        body: Column(
          // column take all available height and take max width of tis children

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.stretch,

          // check for - spaceAround

          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              child: const Text(
                'Good Afternoon Flutter',
                style: TextStyle(
                  fontSize: 30, // to control the size of the text
                  fontWeight:
                      FontWeight.w700, // to contorl the thickness of the text
                  fontStyle: FontStyle
                      .italic, // to cpontrol the font style of the text (italic, normal)
                  color: Colors.red, // to change the color of the text
                  letterSpacing:
                      2.3, // to provide spacing between the character of the text
                  wordSpacing:
                      4, // to provide spaceing between the words of the text
                  decoration: TextDecoration
                      .overline, // to add line to the text (under, over, inline)
                ),
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),

            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: const Text(
                'Good Morning Flutter',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),

            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: const Text(
                'Good Morning Flutter',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),

            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: const Text(
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
            ),
          ],
        ),

        // BOttom nativagtion Bar
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 169, 169, 169),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              label: 'Account',
            ),
          ],

          currentIndex: currentIndexNew,

          // ontap functoin for tab changing

          onTap: (int abc){
            setState(() {
              currentIndexNew = abc;
            });
          },

        ),
      ),
    );
  }
}
