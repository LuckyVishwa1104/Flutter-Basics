import 'package:flutter/material.dart';
import 'package:flutter_basics/shopping/category_screen.dart';
import 'package:flutter_basics/shopping/checkout_screen.dart';
import 'package:flutter_basics/shopping/initial_screen.dart';
import 'package:flutter_basics/shopping/product_detail_screen.dart';
import 'package:flutter_basics/shopping/product_list_screen.dart';
import 'package:flutter_basics/shopping/shopping_home_page.dart';

class ShoppingDriver extends StatelessWidget {
  const ShoppingDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitialScreen(),
      routes: {
        '/initialScreen' : (context)=> InitialScreen(),
        '/shoppingHomePage' : (context) => ShoppingHomePage(),
        '/categoryScreen' : (context)=> CategoryScreen(),
        '/productListScreen' : (context)=> ProductListScreen(),
        '/productDetailScreen' : (context)=> ProductDetailScreen(),
        '/checkoutScreen' : (context)=> CheckoutScreen(),
      },
    );
  }
}
