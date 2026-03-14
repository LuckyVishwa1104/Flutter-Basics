import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/pop_until/select_type.dart';

class Burger extends StatelessWidget {
  const Burger({super.key});
  void moveType(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>  const SelectType(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Burger'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => moveType(context), child:const Text('Select Type')),
      ),
    );
  }
}