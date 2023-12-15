import 'package:flutter/material.dart';
import 'package:food_app_beta/data/data.dart';
import 'package:food_app_beta/widgets/food_page.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: foodss
            .map(
              (foods) => Container(
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FoodPage(
                              foodImage: foods.image,
                              foodName: foods.name,
                              foodPrice: foods.price,
                              foodIntroduce: foods.introduce,
                              foodRating: foods.rating,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                        child: Image.asset(
                          foods.image!,
                        ),
                        height: 220,
                        width: 300,
                      ),
                    ),
                    Container(
                      width: 290,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 9),
                          Text(
                            foods.name!,
                            style: TextStyle(fontSize: 20),
                          ),
                          Spacer(),
                          Text(
                            "\$${foods.price}",
                            style: TextStyle(fontSize: 20, color: Colors.pink),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

