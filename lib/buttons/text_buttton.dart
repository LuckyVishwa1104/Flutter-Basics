import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        foregroundColor: Colors.black,
        // backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
        padding: EdgeInsets.zero,
        
      ).copyWith(
        overlayColor: MaterialStateProperty.all(Colors.transparent)
      ),
      child: Text('Click here'),
    );
  }
}
