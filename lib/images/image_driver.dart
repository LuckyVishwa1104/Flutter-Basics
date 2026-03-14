import 'package:flutter/material.dart';
import 'package:flutter_basics/images/sub_drivers/image_assets_sub_driver.dart';
import 'package:flutter_basics/images/sub_drivers/image_file_sub_driver.dart';
import 'package:flutter_basics/images/sub_drivers/image_memory_sub_driver.dart';
import 'package:flutter_basics/images/sub_drivers/image_network_sub_driver.dart';

class ImageDriver extends StatelessWidget {
  const ImageDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          title: const Text('Image Displayer'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          width: double.infinity,
          child: const SingleChildScrollView(
            
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  'Image by network',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                ImageNetworkSubDriver(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Image by assets',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                ImageAssetsSubDriver(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Image by file',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                ImageFileSubDriver(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Image by memory',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                ImageMemorySubDriver(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
