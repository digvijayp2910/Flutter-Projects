import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [ Color.fromARGB(200, 4, 86, 208),Color.fromARGB(200, 6, 36, 86)],
                ),
              ),
              child: Center(
                child: Image.asset("images/admin.png",fit: BoxFit.cover,),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                  child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

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
            ),
          ),
        ],
      ),
    );
  }
}
