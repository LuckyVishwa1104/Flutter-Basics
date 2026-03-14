import 'package:flutter/material.dart';
import 'package:flutter_basics/navigation/pop_until/food_items/burger.dart';
import 'package:flutter_basics/navigation/pop_until/food_items/pizza.dart';

class HomePagePop extends StatelessWidget {
  const HomePagePop({super.key});

  void movePizza(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Pizza(),
      ),
    );
  }

  void moveBurger(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Burger(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: ()=> movePizza(context),
              child: const Text('Pizza'),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: ()=> moveBurger(context),
              child: const Text('Burger'),
            ),
          ],
        ),
      ),
    );
  }
}
