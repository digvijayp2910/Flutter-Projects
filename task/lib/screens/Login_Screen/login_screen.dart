import 'package:task/screens/Home_Screen/home_screen.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Huge title "LOGIN"
          const Text(
            'LOGIN',
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Color.fromRGBO(128, 128, 128, 0.8), // Shadow color
                    offset: Offset(2, 2), // Shadow position, x and y
                    blurRadius: 2, // Shadow blur radius
                  ),
                ]),
          ),

          const SizedBox(height: 16.0),
          // Username Field
          Container(
            // padding: EdgeInsets.only(left: 0),
            width: MediaQuery.of(context).size.width /
                3, // Adjust the width as needed
            decoration: BoxDecoration(
                // border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    spreadRadius: 1,
                    offset: Offset(-1, -1),
                  ),
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1,
                    spreadRadius: 1,
                    offset: Offset(1, 1),
                  ),
                ]),
            child: const Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Username',
                      // enabledBorder: InputBorder,
                      border: InputBorder.none,
                      icon: Icon(Icons.email)),
                ),
        Divider(height: 2),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      border: InputBorder.none,
                      icon: Icon(Icons.lock)),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16.0), // Add spacing after the password field

          SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              height: 45,
              // decoration: BoxDecoration(
              //   boxShadow: [
              //     BoxShadow(
              //       color: Colors.grey.shade300,
              //       blurRadius: 5,
              //       spreadRadius: 1,
              //     ),
              //     const BoxShadow(
              //       color: Colors.black12,
              //       blurRadius: 65,
              //       spreadRadius: 15,
              //       offset: Offset(10, 10),
              //     ),
              //   ],
              // ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(6.0),
                  backgroundColor: Colors.blue,
                  shadowColor: const Color.fromRGBO(128, 123, 123, 0.6),
                  // Set the background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Adjust the radius as needed
                  ),
// Adjust the padding as needed
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Forgot Password",
              style: TextStyle(color: Colors.blue, fontSize: 20, shadows: [
                Shadow(
                  color: Color.fromRGBO(94, 92, 92, 0.8), // Shadow color
                  offset: Offset(1, 1), // Shadow position, x and y
                  blurRadius: 1,
                  // Shadow blur radius
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
