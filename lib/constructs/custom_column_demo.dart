import 'package:flutter/material.dart';

class CustomColumnDemo extends StatelessWidget {
  const CustomColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actionsPadding: const EdgeInsets.only(
          right: 5,
        ),
        title: const Text(
          'Column Layout',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const [
          Icon(
            Icons.dark_mode,
          ),
        ],
      ),

      // drawer
      drawer: const Icon(
        Icons.grid_3x3,
      ),

      // body
      body: Container(
        width: double.infinity,
        child: Column(
        
          // MainAxisAlignment : for column it deal with vertical axis
          /**
           * MainAxisAlignment.start - it align the children to the start of the column
           * MainAxisAlignment.center - it align the element to the center of the column
           * MainAxisAlignment.end - it align the element of the end of the column
           * 
           * MainAxisAlignment.spaceEvenly - it will add equal spaces between the middle and edge children of the column
           * MainAxisAlignment.spaceBetween - it will add equal spaces between the chidlrens eccept the edge childrens
           * MainAxisAlignment.spaceAround - it will add equal space between the middle childrens and half spaces around the edge of the column
           */
        
          // CrossAxisAlignment : for column it deal with horizontal axis
          /**
           * CrossAxisAlignment.start - it will align the children to the start of the parent widget
           * CrossAxisAlignment.center - it will align the children to the center of the parent widget
           * CrossAxisAlignment.end - it will align the children to the end of the parent widget
           * 
           * CrossAxisAlignment.strech - it will force the children to take max available width of parent widget
           * CrossAxisAlignment
           */
        
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
        
          // crossAxisAlignment: CrossAxisAlignment.start,

          // textBaseline: TextBaseline.alphabetic,

          children: [

            Container(
              width: 200,
                decoration: const BoxDecoration(color: Color.fromARGB(255, 169, 169, 169),),
                child: const Text(
                  "Hello",
                  style: TextStyle(fontSize: 40, color: Colors.blue),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                decoration: const BoxDecoration(color: Color.fromARGB(255, 169, 169, 169),),
                child: const Text(
                  "World",
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                decoration: const BoxDecoration(color: Color.fromARGB(255, 169, 169, 169),),
                child: const Text(
                  "Flutter",
                  style: TextStyle(fontSize: 30, color: Colors.green),
                ),
              ),
        
            // // 1st children
            // Container(
            //   height: 80,
            //   width: 80,
            //   decoration: BoxDecoration(
            //     color: Colors.red,
            //     borderRadius: BorderRadius.circular(
            //       8,
            //     ),
            //   ),
            // ),
        
            // // 2nd children
            // Container(
            //   height: 80,
            //   width: 80,
            //   decoration: BoxDecoration(
            //     color: Colors.green,
            //     borderRadius: BorderRadius.circular(
            //       8,
            //     ),
            //   ),
            // ),
        
            // // 3rd children
            // Container(
            //   height: 80,
            //   width: 80,
            //   decoration: BoxDecoration(
            //     color: Colors.blue,
            //     borderRadius: BorderRadius.circular(
            //       8,
            //     ),
            //   ),
            // )
            
          ],
          
        ),
      ),
    );
  }
}
