import 'package:flutter/material.dart';
import 'package:food_app_beta/screens/home/home_screen.dart';

class LoginFacebookScreen extends StatefulWidget {
  const LoginFacebookScreen({super.key});

  @override
  State<LoginFacebookScreen> createState() => _LoginFacebookScreenState();
}

class _LoginFacebookScreenState extends State<LoginFacebookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2B65D1),
        title: Text(
          "Facebook",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  labelText: "Email or phone",
                  labelStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              SizedBox(height: 24),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 24),
              Container(
                height: 58,
                width: 380,
                decoration: BoxDecoration(
                  color: Color(0xFF2B65D1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextButton(
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Successfully!"),
                          actions: [
                            TextButton(
                              child: Text("Go home"),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
