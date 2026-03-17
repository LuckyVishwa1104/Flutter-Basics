import 'package:flutter/material.dart';

class HomeDemo extends StatelessWidget {
  const HomeDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: const Color.fromARGB(255, 199, 235, 243),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 135,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 135,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 135,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 135,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.yellow,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 140,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 140,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 140,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 135,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.brown,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
