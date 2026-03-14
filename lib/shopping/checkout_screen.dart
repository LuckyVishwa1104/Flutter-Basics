import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // After completing checkout, pop until the HomeScreen is reached
            Navigator.popUntil(context, (route) => route.settings.name == '/shoppingHomePage');
          },
          child: Text('Complete Checkout and Return to Home'),
        ),
      ),
    );
  }
}