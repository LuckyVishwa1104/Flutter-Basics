import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/pop_until/select_size.dart';

class SelectType extends StatelessWidget {
  const SelectType({super.key});
  void moveSize(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SelectSize(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Type'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => moveSize(context),
          child: const Text('Select Size'),
        ),
      ),
    );
  }
}
