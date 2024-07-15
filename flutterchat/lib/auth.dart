import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() {
    return _AuthScreen();
  }
}

class _AuthScreen extends State<AuthScreen> {
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SingleChildScrollView(
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
            Container(
                // padding: const EdgeInsets.only(left: 30,right: 30),
                width: 200,
                height: 300,
                // margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Image.asset("assets/images/chat.png")),
            Card(
              margin:
                  const EdgeInsets.only(top: 5, right: 10, left: 10, bottom: 5),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 10, left: 30, right: 30, top: 10),
                  child: Form(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                              label: Text("Email Address")),
                        ),
                        TextFormField(
                          decoration:
                              const InputDecoration(label: Text("Password")),
                          obscureText: true,
                        ),
                        const SizedBox(height: 10,),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,),
                          child: const Text("LogIn"),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text("Create an account")),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]))),
    );
  }
}
