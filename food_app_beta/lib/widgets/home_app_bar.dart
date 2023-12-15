import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_beta/screens/cart/cart_screen.dart';
import 'package:food_app_beta/screens/personal/personal_screen.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PersonalScreen(),
                ),
              );
            },
            icon: Icon(
              Icons.account_circle,
              size: 36,
              color: Colors.pink,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Food Panda",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(),
                ),
              );
            },
            icon: Icon(
              CupertinoIcons.cart_fill,
              size: 30,
              color: Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}
