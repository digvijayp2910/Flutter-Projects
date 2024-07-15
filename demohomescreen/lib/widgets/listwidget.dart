import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdatesPage extends StatelessWidget {
  final List<UpdateItem> updateItems = [
    UpdateItem(true, 'Documents Approved for RFQ001', '56 minutes'),
    UpdateItem(false, 'Documents Rejected for RFQ002', '56 minutes'),
    UpdateItem(true, 'Documents Rejected for RFQ003', '56 minutes'),
    UpdateItem(true, 'Documents Rejected for RFQ004', '56 minutes'),
    UpdateItem(true, 'Documents Rejected for RFQ005', '56 minutes'),
    // Add more items here...
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(padding: EdgeInsets.all(5),child: Text("Latest Updates",style: TextStyle(fontSize: 20),)),
            Divider(color: Colors.black),
            Expanded(
              child: ListView.separated(
                itemCount: updateItems.length,
                separatorBuilder: (context, index) => Divider(color: Colors.black),
                itemBuilder: (context, index) {
                  UpdateItem item = updateItems[index];
                  return ListTile(
                    leading: Icon(
                      item.success ? Icons.check_circle : Icons.cancel,
                      color: item.success ? Colors.green : Colors.red,
                    ),
                    title: Text(item.message),
                    subtitle: Text(item.time),
                  );
                },
              ),
            ),
          ],
        ),
      );
  }
}

class UpdateItem {
  final bool success;
  final String message;
  final String time;

  UpdateItem(this.success, this.message, this.time);
}