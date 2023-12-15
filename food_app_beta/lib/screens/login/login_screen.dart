import 'package:flutter/material.dart';
import 'package:food_app_beta/screens/login/login_facebook_screen.dart';
import 'package:food_app_beta/screens/login/sign_up_screen.dart';
import 'package:food_app_beta/screens/home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/img_background_login.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Image.asset("assets/images/img_food_panda_login.png"),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        labelText: "Username",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(height: 24),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(height: 24),
                  Container(
                    height: 58,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextButton(
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    height: 58,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Color(0xFF2B65D1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.facebook,
                            color: Colors.white,
                            size: 24,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'CONNECT WITH FACEBOOK',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginFacebookScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dont't have an account?",
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.pink, fontSize: 16),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
