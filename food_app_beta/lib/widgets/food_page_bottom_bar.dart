import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodPageBottomBar extends StatelessWidget {
  final double? foodPrice;
  final VoidCallback? onAddToCart;

  const FoodPageBottomBar({
    super.key,
    this.foodPrice,
    this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "\$$foodPrice",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton.icon(
            onPressed: onAddToCart,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.pink,
              ),
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(vertical: 13, horizontal: 15),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            icon: Icon(CupertinoIcons.cart_badge_plus),
            label: Text(
              "Add To Cart",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
