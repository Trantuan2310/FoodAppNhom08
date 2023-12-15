import 'package:flutter/material.dart';
import 'package:food_app_beta/screens/login/login_screen.dart';
import 'package:food_app_beta/screens/orderhistory/order_history_screen.dart';

class PersonalScreen extends StatefulWidget {
  const PersonalScreen({super.key});

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  Future<void> _signOut() async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Want to sign out?"),
          actions: [
            TextButton(
              child: Text("Yes"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
            TextButton(
              child: Text("No"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 12, bottom: 24),
            height: 240,
            color: Colors.pink,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 64,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Erik Walters",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "0383 zendar park",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.history,
                      size: 48,
                      color: Colors.blue,
                    ),
                    title: Text("Orders History"),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderHistoryScreen(),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.payment,
                      size: 48,
                      color: Colors.green,
                    ),
                    title: Text("Payment Method"),
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.star,
                      size: 48,
                      color: Colors.deepOrangeAccent,
                    ),
                    title: Text("Reward Credits"),
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.settings,
                      size: 48,
                      color: Colors.orange,
                    ),
                    title: Text("Setting"),
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.people,
                      size: 48,
                      color: Color.fromARGB(255, 11, 216, 231),
                    ),
                    title: Text("Invite Friends"),
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.exit_to_app,
                      size: 48,
                      color: Colors.blueAccent,
                    ),
                    title: Text(
                      "Đăng xuất",
                    ),
                    onTap: () => _signOut(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
