import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_app_beta/data/data.dart';
import 'package:food_app_beta/models/food.dart';
import 'package:food_app_beta/screens/cart/cart_screen.dart';
import 'package:food_app_beta/widgets/food_page_app_bar.dart';
import 'package:food_app_beta/widgets/food_page_bottom_bar.dart';
import 'package:provider/provider.dart';


class FoodPage extends StatelessWidget {
  final String? foodImage;
  final String? foodName;
  final double? foodPrice;
  final String? foodIntroduce;
  final double? foodRating;

  const FoodPage({
    super.key,
    this.foodImage,
    this.foodName,
    this.foodPrice,
    this.foodIntroduce,
    this.foodRating,
  });

  @override
  Widget build(BuildContext context) {
        var cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 236, 236),
      body: ListView(
        children: [
          FoodPageAppBar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              foodImage!,
              height: 300,
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          foodName!,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.pink,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar.builder(
                          initialRating: foodRating!,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 25,
                          itemPadding: EdgeInsets.symmetric(horizontal: 2),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.pink,
                          ),
                          onRatingUpdate: (index) {},
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Icon(
                                CupertinoIcons.minus,
                                size: 18,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "01",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Icon(
                                CupertinoIcons.plus,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      foodIntroduce!,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: FoodPageBottomBar(
        foodPrice: foodPrice,
        onAddToCart: () {
          cartProvider.addToCart(foodName!);
        },
      ),
    );
  }
}
