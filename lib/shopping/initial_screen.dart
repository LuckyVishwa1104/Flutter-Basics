import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Initial Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => {
            Navigator.pushNamed(context, '/shoppingHomePage')
          },
          child: Text("Home Screen"),
        ),
      ),
    );
  }
}
