import 'package:flutter/material.dart';
import 'dart:io';

class CustomFileImage extends StatelessWidget {
  final File? path;
  const CustomFileImage({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(7),
      child: SizedBox(
        height: 150,
        width: 180,
        child: path != null
            ? Image.file(
                path!,
                fit: BoxFit.cover,
              )
            : ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Container(
                height: 150,
                width: 180,
                color: Colors.grey[200],
                child: Icon(Icons.image_rounded,size: 100,),),
            ),
      ),
    );
  }
}
