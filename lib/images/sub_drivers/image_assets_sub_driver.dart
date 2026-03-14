import 'package:flutter/material.dart';
import 'package:flutter_basics/images/image_display_type/image_assets.dart';

class ImageAssetsSubDriver extends StatelessWidget {
  const ImageAssetsSubDriver({super.key});

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
            CustomImageAssets(path: 'assets/img2.jpeg'),
            SizedBox(
              width: 10,
            ),
            CustomImageAssets(path: 'assets/img3.jpeg'),
            SizedBox(
              width: 10,
            ),
            CustomImageAssets(path: 'assets/img4.jpeg'),
          ],
        ),
      ),
    );
  }
}
