import 'package:flutter/material.dart';

class CustomImageAssets extends StatelessWidget {
  const CustomImageAssets({super.key, required this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(7),
      child: SizedBox(
        height: 150,
        width: 180,
        child: Image.asset(path, fit: BoxFit.cover,),
      ),
    );
  }
}
