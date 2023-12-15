import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_beta/screens/cart/cart_screen.dart';

class FoodPageAppBar extends StatelessWidget {
  const FoodPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.pink,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Food",
              style: TextStyle(
                fontSize: 23,
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
