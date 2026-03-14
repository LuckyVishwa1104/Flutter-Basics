import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/pop_until/home_page.dart';

class ConfirmStatus extends StatelessWidget {
  const ConfirmStatus({super.key});
  void moveHome(BuildContext context) {
    Navigator.popUntil(
        context, (route) => route.settings.name == null && route.isFirst);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Placed'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => moveHome(context),
          child: const Text('Return to Home Screen'),
        ),
      ),
    );
  }
}
