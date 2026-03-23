import 'package:flutter/material.dart';

class CustomContainerDemo extends StatelessWidget {
  const CustomContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {

    Color bgClr = const Color.fromARGB(255, 54, 54, 54);

    Color textColor = Colors.white;

    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          'Custome Container',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
        actions: const [
          Icon(
            Icons.logout,
          )
        ],

        actionsPadding: EdgeInsets.all(8),
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
                color: bgClr,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Hello!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: textColor,
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
                      color: bgClr,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Holla!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: textColor,
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
                      color: bgClr,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Holla!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: textColor,
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
                      color: bgClr,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Holla!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: textColor,
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
                      color: bgClr,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Holla!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: textColor,
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

            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgClr,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Hello!!!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    color: textColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgClr,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Hello!!!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    color: textColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // row
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 150,
                    decoration: BoxDecoration(
                      color: bgClr,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Holla!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: textColor,
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
                      color: bgClr,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Holla!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: textColor,
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
                      color: bgClr,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Holla!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: textColor,
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

            // column children items
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: bgClr,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Hello!!!',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                    color: textColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
