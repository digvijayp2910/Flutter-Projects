import 'package:flutter/material.dart';
import 'package:task/screens/Login_Screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    // print(deviceHeight);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: deviceWidth < 500 ? const LoginForm() :Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            children: [
              // First half: Image
              Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.zero, // Ensure zero margin
                    padding: EdgeInsets.zero, // Ensure zero padding
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/mypostlogin.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              // Second half: Login Form
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  child: const LoginForm(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

