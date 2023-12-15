import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_app_beta/data/data.dart';
import 'package:food_app_beta/widgets/food_page.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          "Favorite",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: foods
            .map(
              (food) => Container(
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(0, 2),
                      blurRadius: 2,
                      spreadRadius: 1,
                    ),
                  ],
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
                        height: 120,
                        width: 391,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(food.image!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 36, top: 10, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            food.name!,
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            food.description!,
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: Colors.black54,
                            ),
                          ),
                          Row(
                            children: [
                              RatingBar.builder(
                                initialRating: food.rating!,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 16,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 2),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.pink,
                                ),
                                onRatingUpdate: (index) {},
                              ),
                              SizedBox(width: 10),
                              Text(
                                food.reviews!,
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
