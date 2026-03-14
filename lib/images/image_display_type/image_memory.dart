import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImageMemory extends StatefulWidget {
  const ImageMemory({super.key, required this.path});
  final String path;

  @override
  State<ImageMemory> createState() => _ImageMemoryState();
}

class _ImageMemoryState extends State<ImageMemory> {
  Uint8List? imageData;

  @override
  void initState() {
    super.initState();
    converterFunction();
  }

  Future<void> converterFunction() async {
    final ByteData data = await rootBundle.load(widget.path);
    setState(() {
      imageData = data.buffer.asUint8List();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(7),
      child: SizedBox(
        height: 150,
        width: 180,
        child: imageData != null ?
        Image.memory(imageData!, fit: BoxFit.cover,)
        : const CircularProgressIndicator(),
      ),
    );
  }
}
