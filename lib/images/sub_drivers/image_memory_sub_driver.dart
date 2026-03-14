import 'package:flutter/material.dart';
import 'package:flutter_basics/images/image_display_type/image_memory.dart';

class ImageMemorySubDriver extends StatelessWidget {
  const ImageMemorySubDriver({super.key});

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
          children: [
            ImageMemory(path: 'assets/img3.jpeg'),
            SizedBox(width: 10,),
            ImageMemory(path: 'assets/img4.jpeg'),
            SizedBox(width: 10,),
            ImageMemory(path: 'assets/img1.jpeg'),
          ],
        ),
      ),
    );
  }
}