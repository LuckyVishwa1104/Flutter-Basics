import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  final String path;
  const CustomNetworkImage({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(7),
      child: SizedBox(
        height: 150,
        width: 180,
        child: Image.network(path, fit: BoxFit.cover,),
      ),
    );
  }
}
