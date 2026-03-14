import 'package:flutter/material.dart';

class GesturePage extends StatelessWidget {
  const GesturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Detector'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // image
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/imagePage'),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: SizedBox(
                  height: 150,
                  width: 180,
                  child: Image.asset(
                    'assets/img3.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            // icon
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/iconPage');
              },
              child: Icon(
                Icons.home_filled,
                size: 30,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            // text
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/textPage');
              },
              child: Text(
                'Click Here',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
