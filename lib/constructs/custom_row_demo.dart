import 'package:flutter/material.dart';

class CustomRowDemo extends StatelessWidget {
  const CustomRowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text(
          'ROW Layout',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: const [
          Icon(
            Icons.star,
          ),
        ],
        actionsPadding: const EdgeInsets.only(right: 8),
      ),

      // drawer
      drawer: const Icon(
        Icons.grid_3x3,
      ),

      // body
      body: Center(
        child: Container(
          // height: 290,
          width: double.infinity,
          // padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              8,
            ),
            color: const Color.fromARGB(
              255,
              227,
              226,
              226,
            ),
          ),

          /* MainAxisAlignment - for ROW it deal with horizontal axis
          MainAxisAlignment.start - it alling the children to the start of the row
          MainAxisAlignment.end - it allign the children to the end of the row
          MainAxisAlignment.center - it align the children to the center of the row

          MainAxisAlignment.spaceBetween - it add equal spaces between children except the first and last children
          MainAxisAlignment.spaceEvenly - it add equal spaces between childrens and start and end children as well
          MainAxisAlignment.spaceAround - it add equal spaces between childrens and add half spaces between start and end children
          */

          /* CrossAxisAlignment - for ROW it deal with vertical axis
          CrossAxisAlignment.center - it allign the children to the center of the parent widget
          CrossAxisAlignment.end - it allign the children to the end of the parent widget 
          CrossAxisAlignment.start - it allign the chidren to the start of the parent widget

          CrossAxisAlignment.strech - it force the children to occupy all the available space
          CrossAxisAlignment.baseLine - it align text widget based on the baseline(the bottom line at which all the text will align same)
          */

          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround, 
            crossAxisAlignment: CrossAxisAlignment.center,

            // textDirection: TextDirection.ltr, // reverse direction ltr(left to right) rtl(right to left)

            verticalDirection: VerticalDirection.down,

            // mainAxisSize: MainAxisSize.min,  // it takes max or min width available in parent widget

            // textBaseline: TextBaseline.alphabetic,
            children: [

              // Container(
              //   decoration: const BoxDecoration(color: Color.fromARGB(255, 169, 169, 169),),
              //   child: const Text(
              //     "Hello",
              //     style: TextStyle(fontSize: 40, color: Colors.blue),
              //   ),
              // ),
              // const SizedBox(width: 10),
              // Container(
              //   decoration: const BoxDecoration(color: Color.fromARGB(255, 169, 169, 169),),
              //   child: const Text(
              //     "World",
              //     style: TextStyle(fontSize: 20, color: Colors.red),
              //   ),
              // ),
              // const SizedBox(width: 10),
              // Container(
              //   decoration: const BoxDecoration(color: Color.fromARGB(255, 169, 169, 169),),
              //   child: const Text(
              //     "Flutter",
              //     style: TextStyle(fontSize: 30, color: Colors.green),
              //   ),
              // ),

              Container(
                height: 100,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: Colors.red),
              ),
              // const SizedBox(
              //   width: 8,
              // ),
              Container(
                height: 100,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                ),
              ),
              // const SizedBox(
              //   width: 8,
              // ),
              Container(
                height: 100,
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
        ),
      ),
    );
  }
}
