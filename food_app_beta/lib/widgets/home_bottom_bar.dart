import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_beta/screens/cart/cart_screen.dart';
import 'package:food_app_beta/screens/favorite/favorites.dart';
import 'package:food_app_beta/screens/home/home_screen.dart';
import 'package:food_app_beta/screens/notification/notification_screen.dart';
import 'package:food_app_beta/screens/orderhistory/order_history_screen.dart';
import 'package:food_app_beta/screens/personal/personal_screen.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            child: Icon(
              Icons.home,
              color: Colors.white,
              size: 32,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OrderHistoryScreen(),
                ),
              );
            },
            child: Icon(
              Icons.history,
              color: Colors.white,
              size: 32,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FavoritesScreen(),
                ),
              );
            },
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 32,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationScreen(),
                ),
              );
            },
            child: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 32,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PersonalScreen(),
                ),
              );
            },
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
