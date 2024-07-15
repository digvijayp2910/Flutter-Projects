import 'package:flutter/material.dart';

import '../models/companyModel.dart';



class ColumnTwo extends StatelessWidget {
  const ColumnTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color:const Color.fromRGBO(235, 237, 250, 1) ,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  suffixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10.0), // Adjust the spacing as needed
               Flexible(
                child: ListView.builder(
                  itemCount: companyList.length,
                  itemBuilder: (context, index) {
                    return Container( decoration: const BoxDecoration(boxShadow: [  BoxShadow(
                    color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: -10,
                      offset: Offset(0, 5),
                    ), ]),
                      child: Card(
                        elevation: 2.0,
                        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage( companyList[index].imageUrl),),
                          title: Text(
                            companyList[index].name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle:  Text(companyList[index].email),
                        ),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

//
// /Card(
// elevation: 2.0,
// margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
// child: ListTile(
// leading: CircleAvatar(
// backgroundImage: companyList[index].imageUrl,),
// title: Text(
// companyList[index].name,
// style: TextStyle(fontWeight: FontWeight.bold),
// ),
// subtitle: companyEmail: companyList[index].email,
// ),
// );
//
//
// CompanyCard(
// imageUrl: companyList[index].imageUrl,
// companyName: companyList[index].name,
// companyEmail: companyList[index].email,
// );