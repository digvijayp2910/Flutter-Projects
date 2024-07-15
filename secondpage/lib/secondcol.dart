import 'package:flutter/material.dart';
import 'package:secondpage/companydata.dart';

class SecondCol extends StatelessWidget {
  const SecondCol({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CompanyListPage(),
    );
  }
}

class CompanyListPage extends StatelessWidget {
  const CompanyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Company List'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                DropdownButton<String>(
                  onChanged: (value) {
                    // Handle dropdown value change
                  },
                  items: const [
                    DropdownMenuItem(child: Text('Created'), value: 'Created'),
                    DropdownMenuItem(child: Text('Updated'), value: 'Updated'),
                    DropdownMenuItem(child: Text('Name'), value: 'Name'),
                  ],
                  hint: const Text('Sort By'),
                ),
                SizedBox(width: 10.0),
                PopupMenuButton<String>(
                  itemBuilder: (BuildContext context) {
                    return ['Ascending', 'Descending'].map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(choice),
                      );
                    }).toList();
                  },
                  onSelected: (value) {
                    // Handle popup menu selection
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: companyData.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 2.0,
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(companyData[index]['logo']),
                    ),
                    title: Text(
                      companyData[index]['name'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(companyData[index]['email']),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
