import 'package:flutter/material.dart';
import 'package:flutter_basics/buttons/elevated_button.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  CustomContainer({super.key});
  Color clr = Colors.grey;
  void func1(Color colr) {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Container'),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 197, 134, 130),
                ),
                // foregroundDecoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(width: 2)),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),

                      // color: Colors.orange,
                      // foregroundDecoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 2)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange),
                      width: double.infinity,
                      height: 200,
                      child: SingleChildScrollView(

                        scrollDirection: Axis.vertical,
                        child: Column(

                          children: [
                            MyElevatedbutton(onColorChanged: func1),
                            SizedBox(
                              height: 10,
                            ),
                            MyElevatedbutton(onColorChanged: func1),
                            SizedBox(
                              height: 10,
                            ),
                            MyElevatedbutton(onColorChanged: func1),
                            SizedBox(
                              height: 10,
                            ),
                            MyElevatedbutton(onColorChanged: func1),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyElevatedbutton(onColorChanged: func1),
                            SizedBox(
                              width: 10,
                            ),
                            MyElevatedbutton(onColorChanged: func1),
                            SizedBox(
                              width: 10,
                            ),
                            MyElevatedbutton(onColorChanged: func1),
                            SizedBox(
                              width: 10,
                            ),
                            MyElevatedbutton(onColorChanged: func1),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      child: Column(
                        children: [
                          MyElevatedbutton(onColorChanged: func1),
                          SizedBox(
                            height: 10,
                          ),
                          MyElevatedbutton(onColorChanged: func1),
                          SizedBox(
                            height: 10,
                          ),
                          MyElevatedbutton(onColorChanged: func1),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 199, 152, 148),
                ),
                // foregroundDecoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(width: 2)),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      // color: Colors.orange,
                      // foregroundDecoration: BoxDecoration(borderRadius: BorderRadius.circular(8),border: Border.all(width: 2)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange),
                      width: double.infinity,
                      child: Column(
                        children: [
                          MyElevatedbutton(onColorChanged: func1),
                          SizedBox(
                            height: 10,
                          ),
                          MyElevatedbutton(onColorChanged: func1),
                          SizedBox(
                            height: 10,
                          ),
                          MyElevatedbutton(onColorChanged: func1),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            MyElevatedbutton(onColorChanged: func1),
                            SizedBox(
                              width: 10,
                            ),
                            MyElevatedbutton(onColorChanged: func1),
                            SizedBox(
                              width: 10,
                            ),
                            MyElevatedbutton(onColorChanged: func1),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      child: Column(
                        children: [
                          MyElevatedbutton(onColorChanged: func1),
                          SizedBox(
                            height: 10,
                          ),
                          MyElevatedbutton(onColorChanged: func1),
                          SizedBox(
                            height: 10,
                          ),
                          MyElevatedbutton(onColorChanged: func1),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
