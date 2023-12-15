import 'package:flutter/material.dart';
import 'package:food_app_beta/widgets/cart_app_bar.dart';
import 'package:food_app_beta/widgets/cart_food.dart';
import 'package:food_app_beta/widgets/home_bottom_bar.dart';
import 'package:food_app_beta/widgets/order_cart.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cartProvider = Provider.of<CartProvider>(context);
    var selectedFoodNames = cartProvider.selectedFoodNames;
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 239, 236, 236),
            ),
            child: Column(
              children: [
                CartFood(
                  selectedFoodNames: selectedFoodNames),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 5),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sub-Total:",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            "\$120",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                      Divider(
                        height: 30,
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery Free:",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            "\$20",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                      Divider(
                        height: 30,
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Discount:",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            "-\$10",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                      Divider(
                        height: 30,
                        thickness: 0.5,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sub-Total:",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          Text(
                            "\$130",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink,
                            ),
                          )
                        ],
                      ),
                      OrderCart(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // CartFood(selectedFoodNames: selectedFoodNames),
        ],
      ),
    );
  }
}

class CartProvider extends ChangeNotifier {
  List<String> _selectedFoodNames = [];

  List<String> get selectedFoodNames => _selectedFoodNames;

  void addToCart(String foodName) {
    _selectedFoodNames.add(foodName);
    notifyListeners();
  }
}
