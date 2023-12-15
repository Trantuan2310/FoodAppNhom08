import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_app_beta/data/data.dart';
import 'package:food_app_beta/widgets/food_page.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({super.key});

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Order History"),
      ),
      body: ListView(
        children: foods
            .map(
              (food) => Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 15),
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
                child: Row(
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
                        margin: EdgeInsets.only(right: 20),
                        child: Image.asset(
                          food.image!,
                          height: 120,
                          width: 120,
                        ),
                      ),
                    ),
                    Expanded(
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
                          SizedBox(height: 10),
                          Text(
                            food.description!,
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(height: 10),
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
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                food.dateOrder!,
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.black54,
                                ),
                              ),
                              SizedBox(width: 36),
                              Text(
                                "\$${food.price}",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink,
                                ),
                              ),
                            ],
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
