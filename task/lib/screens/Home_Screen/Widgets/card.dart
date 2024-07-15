import 'package:flutter/material.dart';

class CompanyCard extends StatelessWidget {
  final String imageUrl;
  final String companyName;
  final String companyEmail;

  const CompanyCard(
      {super.key,
      required this.imageUrl,
      required this.companyName,
      required this.companyEmail});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          backgroundColor: const Color.fromRGBO(245, 246, 252, 1),
        ),
        title: Text(companyName),
        subtitle: Text(companyEmail),
      ),
    );
  }
}
