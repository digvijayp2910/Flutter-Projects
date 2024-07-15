import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyCustomTable()));
}

class MyCustomTable extends StatefulWidget {
  @override
  _MyCustomTableState createState() => _MyCustomTableState();
}

class _MyCustomTableState extends State<MyCustomTable> {
  List<Map<String, dynamic>> data = [
    {"Name": "Alice", "Age": 25, "Occupation": "Developer"},
    {"Name": "Bob", "Age": 30, "Occupation": "Designer"},
    {"Name": "Charlie", "Age": 22, "Occupation": "Chef"},
  ];

  List<String> headers = ["Name", "Age", "Occupation"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Custom Draggable Table")),
      body: Column(
        children: [
          Container(
            height: 50, // Constrained height for the ReorderableListView
            child: ReorderableListView(
              scrollDirection: Axis.horizontal,
              onReorder: _onReorder,
              children: headers.map((header) {
                return Container(
                  key: ValueKey(header),
                  width: 120,
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.center,
                  child: Text(header, style: TextStyle(fontWeight: FontWeight.bold)),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Row(
                  children: headers.map((header) {
                    return Container(
                      width: 120,
                      padding: EdgeInsets.all(8),
                      alignment: Alignment.center,
                      child: Text(data[index][header].toString()),
                    );
                  }).toList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _onReorder(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    setState(() {
      final item = headers.removeAt(oldIndex);
      headers.insert(newIndex, item);
    });
  }
}
