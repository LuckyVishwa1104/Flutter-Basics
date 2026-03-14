import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/pop_until/payment.dart';

class SelectSize extends StatelessWidget {
  const SelectSize({super.key});

  void movePayment(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Payment(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Size',
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => movePayment(context),
          child: const Text('Payment.'),
        ),
      ),
    );
  }
}
