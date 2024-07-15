import 'package:flutter/material.dart';

class CompanyInfoForm extends StatelessWidget {
  const CompanyInfoForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Card(
        surfaceTintColor: Colors.white,
        margin: const EdgeInsets.only(top: 5, right: 10, left: 10, bottom: 5),
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(bottom: 10, left: 30, right: 30, top: 10),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(label: Text("Name")),
                  ),

                      TextFormField(
                        decoration:
                            const InputDecoration(label: Text("Country")),
                      ),
                      TextFormField(
                        decoration:
                            const InputDecoration(label: Text("Zip Code")),
                      ),


                  TextFormField(
                    decoration: const InputDecoration(label: Text("Country")),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                    ),
                    child: const Text("LogIn"),
                  ),
                  TextButton(
                      onPressed: () {}, child: const Text("Forgot Password")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
