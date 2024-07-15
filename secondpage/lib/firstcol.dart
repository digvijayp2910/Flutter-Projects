import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddCompany extends StatelessWidget {
   const AddCompany({super.key});


  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [CircleAvatar(minRadius: 30,maxRadius: 60,backgroundImage:   AssetImage("images/butt.png"),),
            SizedBox(height: 20.0),
            Text(
              'My Post',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            ElevatedButton.icon(
              onPressed: () {
                // Action for Add Company
              },
              icon: Icon(Icons.add),
              label: Text('Add Company'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
            ),
            SizedBox(height: 40.0),
            ElevatedButton.icon(
              onPressed: () {
                // Action for Dashboards
              },
              icon: Icon(Icons.dashboard),
              label: Text('Dashboards'),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton.icon(
              onPressed: () {
                // Action for Logout
              },
              icon: Icon(Icons.logout),
              label: Text('Logout'),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
            ),
          ],
        ),
      );

  }
}

