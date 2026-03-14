import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/pop_until/confirm_status.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});
  void moveConfirm(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ConfirmStatus(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => moveConfirm(context),
            child: const Text('Confirm Page')),
      ),
    );
  }
}
