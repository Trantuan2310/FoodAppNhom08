import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_beta/data/data.dart';
import 'package:food_app_beta/widgets/food_page.dart';
import 'package:food_app_beta/models/food.dart';

class PopularDishes extends StatefulWidget {
  const PopularDishes({super.key});

  @override
  State<PopularDishes> createState() => _PopularDishesState();
}

class _PopularDishesState extends State<PopularDishes> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.72,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: foods
          .map(
            (food) => Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FoodPage(
                            foodImage: food.image,
                            foodName: food.name,
                            foodPrice: food.price,
                            foodIntroduce: food.introduce,
                            foodRating: food.rating,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: Image.asset(
                        food.image!,
                        height: 140,
                        width: 140,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        food.name!,
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      food.description!,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${food.price}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink,
                          ),
                        ),
                        Icon(
                          CupertinoIcons.cart_badge_plus,
                          color: Colors.pink,
                          size: 28,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
