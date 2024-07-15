import 'package:flutter/material.dart';
import 'package:task/screens/Home_Screen/Widgets/outlinedTextField.dart';

class ColumnThree extends StatelessWidget {
  const ColumnThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: const Color.fromRGBO(245, 246, 252, 1),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Company Info',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Divider(
                      height: 2,
                      thickness: 3,
                    )),
                const SizedBox(height: 16.0),
                const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                      ),
                      OutlinedTextField(labelText: 'Name')
                    ]),
                const SizedBox(height: 16.0),
                const Row(
                  children: [
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Country",
                            ),
                            OutlinedTextField(labelText: 'Country')
                          ]),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Zip Code",
                            ),
                            OutlinedTextField(labelText: 'Zip Code')
                          ]),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                const Row(
                  children: [
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "City",
                            ),
                            OutlinedTextField(labelText: 'City')
                          ]),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Street",
                            ),
                            OutlinedTextField(labelText: 'Street')
                          ]),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                const Row(
                  children: [
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phone Number",
                            ),
                            OutlinedTextField(labelText: 'Phone Number')
                          ]),
                    ),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email",
                            ),
                            OutlinedTextField(labelText: 'Email')
                          ]),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Upload Letter Template',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Add your logic for uploading letter template
                  },
                  child: const Text('Upload'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
