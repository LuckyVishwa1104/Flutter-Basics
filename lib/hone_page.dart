import 'package:flutter/material.dart';
import 'package:flutter_basics/buttons/elevated_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 1;
  Color _selectedColor = Colors.black;

  void _handleColorChanged(Color color) {
    setState(() {
      _selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'My App',
      home: Scaffold(
        drawer: const Icon(Icons.grid_3x3),
        appBar: AppBar(
          title: const Text('My App'),
          backgroundColor: Colors.blue,
          // centerTitle: true,
        ),
        body: Container(
          color: currentIndex == 0
              ? Colors.grey[100]
              : currentIndex == 1
                  ? Colors.grey[200]
                  : Colors.grey[300],
          child: Center(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    const Text(
                      'Hello!',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Hope you are doing well!',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w400,
                          color: _selectedColor),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'Hello!',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.amber),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'Hope you are doing well!',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.green),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    MyElevatedbutton(onColorChanged: _handleColorChanged),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(
                  Icons.home,
                )),
            BottomNavigationBarItem(
              label: 'Setting',
              icon: Icon(Icons.settings),
            ),
            BottomNavigationBarItem(
              label: 'Logout',
              icon: Icon(Icons.logout),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
