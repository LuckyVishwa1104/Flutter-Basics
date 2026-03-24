import 'package:flutter/material.dart';

class CustomContainerDemo extends StatefulWidget {
  const CustomContainerDemo({super.key});

  @override
  State<CustomContainerDemo> createState() => _CustomContainerDemoState();
}

class _CustomContainerDemoState extends State<CustomContainerDemo> {
  bool toggle = false;

  Color bgClrLight = const Color.fromARGB(255, 216, 214, 214);
  Color bgClrDark = const Color.fromARGB(255, 60, 59, 59);

  Color textColorLight = Colors.black;
  Color textColorDark = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: toggle
          ? const Color.fromARGB(255, 239, 236, 236)
          : const Color.fromARGB(251, 25, 25, 25),
      appBar: AppBar(
        backgroundColor: toggle ? Colors.white : Colors.black,
        foregroundColor: toggle ? Colors.black : Colors.white,
        title: const Text(
          'Custome Container',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              toggle ? Icons.light_mode : Icons.dark_mode,
            ),
            onPressed: () {
              setState(() {
                toggle = !toggle;
              });
            },
          ),
        ],
        actionsPadding: const EdgeInsets.all(8),
      ),

      // drawer
      drawer: const Icon(Icons.grid_3x3),

      // body
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // first container
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: toggle ? bgClrLight : bgClrDark,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Hello!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: toggle ? textColorLight : textColorDark,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // second container
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                      color: toggle ? bgClrLight : bgClrDark,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Holla!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: toggle ? textColorLight : textColorDark,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                      color: toggle ? bgClrLight : bgClrDark,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Holla!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: toggle ? textColorLight : textColorDark,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                      color: toggle ? bgClrLight : bgClrDark,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Holla!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: toggle ? textColorLight : textColorDark,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 160,
                    width: 150,
                    decoration: BoxDecoration(
                      color: toggle ? bgClrLight : bgClrDark,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Holla!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: toggle ? textColorLight : textColorDark,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // third container
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: toggle ? bgClrLight : bgClrDark,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Hello!!!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    color: toggle ? textColorLight : textColorDark,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // fourth container
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: toggle ? bgClrLight : bgClrDark,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Hello!!!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    color: toggle ? textColorLight : textColorDark,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // fifth container
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 150,
                    decoration: BoxDecoration(
                      color: toggle ? bgClrLight : bgClrDark,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Holla!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: toggle ? textColorLight : textColorDark,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 80,
                    width: 150,
                    decoration: BoxDecoration(
                      color: toggle ? bgClrLight : bgClrDark,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Holla!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: toggle ? textColorLight : textColorDark,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 80,
                    width: 150,
                    decoration: BoxDecoration(
                      color: toggle ? bgClrLight : bgClrDark,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Holla!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: toggle ? textColorLight : textColorDark,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // sixth Container
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: toggle ? bgClrLight : bgClrDark,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Hello!!!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    color: toggle ? textColorLight : textColorDark,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
