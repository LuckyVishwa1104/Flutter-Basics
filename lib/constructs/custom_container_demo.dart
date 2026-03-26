import 'package:flutter/material.dart';

class CustomContainerDemo extends StatefulWidget {
  const CustomContainerDemo({super.key});

  @override
  State<CustomContainerDemo> createState() => _CustomContainerDemoState();
}

class _CustomContainerDemoState extends State<CustomContainerDemo> {
  bool toggle = true;

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
              // padding: EdgeInsets.all(20),  // to add padding to the child of the container --> to move the child within the container
              // margin: EdgeInsets.only(top: 30, bottom: 30, right: 30, left: 30,), // to move the container compaired to the its outside entity --> to move the container from the margein of the screen
              alignment:
                  Alignment.center, // to align the child inside the container
              // transform: Matrix4.rotationZ(0.5), // to add transformatino to container --> to change its position
              decoration: BoxDecoration(
                color: toggle
                    ? bgClrLight
                    : bgClrDark, // to add background color to the container
                border: Border.all(
                  color: Colors.blue, // to add color to the border
                  width: 2, // to maintain width of the border
                  style: BorderStyle.solid, // to add style to the border
                  strokeAlign: BorderSide
                      .strokeAlignInside, // to align border around the edge of the container
                ),
                borderRadius:
                    BorderRadius.circular(8), // to add radius to the container
                boxShadow: const [
                  BoxShadow(
                    color: Colors.red, // to add shadow color
                    blurRadius: 4, // to add width to the shadow
                    offset: Offset(2, 2), // to change the shadow direction
                  )
                ],
              ),
              child: Text(
                'Hello!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: toggle ? textColorLight : textColorDark,
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
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: toggle ? bgClrLight : bgClrDark,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.green, // to add color to the border
                  style: BorderStyle.solid, // to add sylinging to the border
                  width: 2, // to add width to the border
                  strokeAlign: BorderSide
                      .strokeAlignInside, // to adjust the order along the edge of the container
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.yellow, // to aad color of the shadow
                    blurRadius: 4, // to add the width of the shadow
                    offset: Offset(2, 2), // tp adjust the shadow direction
                  )
                ],
              ),
              child: Text(
                'Hello!!!',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                  color: toggle ? textColorLight : textColorDark,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // container with clip behaviour
            Container(
              height: 190,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: toggle ? bgClrLight : bgClrDark,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: toggle
                        ? const Color.fromARGB(255, 111, 110, 110)
                        : const Color.fromARGB(255, 234, 233, 233),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Container(
                constraints: const BoxConstraints(
                  maxHeight: 150,
                  minHeight: 150,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: BoxBorder.all(
                    color: Colors.black,
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                ),
                clipBehavior:
                    Clip.hardEdge, // adjust the image inside rounded corner
                child: Image.asset(
                  'assets/img3.jpeg',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // fourth container - constraint
            Container(
              height: 150,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: toggle ? bgClrLight : bgClrDark,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: toggle
                        ? const Color.fromARGB(255, 111, 110, 110)
                        : const Color.fromARGB(255, 234, 233, 233),
                    blurRadius: 2,
                  )
                ],
              ),
              child: Container(
                height: 120,
                width: 120,
                constraints: const BoxConstraints(
                  maxHeight: 70,
                  maxWidth: 70,
                ),
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 2,
                    strokeAlign: BorderSide.strokeAlignInside,
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

            // container with transition
            Container(
              height: 90,
              width: 120,
              alignment: Alignment.center,
              // transform: Matrix4.rotationX(0.5),  // to rotate the container along the axis
              // transform: Matrix4.translationValues(50, 50, 100), // to move the container along the axis
              // transform: Matrix4.identity()..scale(1.9), // to resize the container
              // transform:  Matrix4.skewX(0.3), // to title the container along the aixs
              decoration: BoxDecoration(
                color: toggle ? bgClrLight : bgClrDark,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Transform!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: toggle ? textColorLight : textColorDark,
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // sixth Container
            Container(
              height: 150,
              width: double.infinity,
              // transform: Matrix4.rotationX(1.6),
              //// rotationX() - it wil transfor in x-axis(horizontally). || rotationY() - it will transform in y-axis (vertically) || transforZ() - it will transfir from top-left conrner of the container
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

            // Decorated box light weight container replacement - but dont have margin and padding
            DecoratedBox(
              decoration: BoxDecoration(
                color: toggle ? bgClrLight : bgClrDark,
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignInside,
                ),
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.greenAccent,
                    blurRadius: 5,
                    blurStyle: BlurStyle.solid,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  'HELLO!',
                  style: TextStyle(
                    color: toggle ? textColorLight : textColorDark,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
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
