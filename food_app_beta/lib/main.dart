import 'package:flutter/material.dart';
import 'package:food_app_beta/screens/cart/cart_screen.dart';
import 'package:food_app_beta/widgets/food_page.dart';
import 'package:food_app_beta/screens/favorite/favorites.dart';
import 'package:food_app_beta/screens/home/home_screen.dart';
import 'package:food_app_beta/screens/orderhistory/order_history_screen.dart';
import 'package:food_app_beta/screens/splash/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const SplashScreen(),
    );
  }
}
