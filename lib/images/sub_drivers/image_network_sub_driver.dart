import 'package:flutter/material.dart';
import 'package:flutter_basics/images/image_display_type/network_image.dart';

class ImageNetworkSubDriver extends StatelessWidget {
  const ImageNetworkSubDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Container( 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.grey[400],
      ),
      child: const SingleChildScrollView(

        padding: EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomNetworkImage(
                path:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ60q1w4WdlFNMWaasSbFOtCSXJeLxtkSmwvg&s'),
            SizedBox(
              width: 10,
            ),
            CustomNetworkImage(
                path:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYJo2sba3F3BZoc3KDWc2DMZrkCxkXpt3n2A&s'),
            SizedBox(
              width: 10,
            ),
            CustomNetworkImage(
                path:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxXO1aMp0b3TtiPAm5sQc18-jf5dz9kZhaqw&s')
          ],
        ),
      ),
    );
  }
}
