import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_basics/images/image_display_type/image_file.dart';
import 'package:image_picker/image_picker.dart';

class ImageFileSubDriver extends StatefulWidget {
  const ImageFileSubDriver({super.key});

  @override
  State<ImageFileSubDriver> createState() => _ImageFileSubDriverState();
}

class _ImageFileSubDriverState extends State<ImageFileSubDriver> {
  File? selectedImage;
  File? selectedImage_;

  void pickFromGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      selectedImage = File(returnedImage!.path);
    });
  }

  void pickFromCamera() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      selectedImage_ = File(returnedImage!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.grey[400],
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                CustomFileImage(path: selectedImage),
                SizedBox(height: 10,),
                IconButton(onPressed: pickFromGallery, icon: Icon(Icons.browse_gallery_rounded, color: Colors.blue,size: 30,),),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                CustomFileImage(path: selectedImage_),
                SizedBox(height: 10,),
                IconButton(onPressed: pickFromCamera, icon: Icon(Icons.camera_alt, color: Colors.blue, size: 30,),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
