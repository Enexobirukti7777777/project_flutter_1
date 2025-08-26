import 'package:flutter/material.dart';

class OfficesView extends StatelessWidget {
  const OfficesView({super.key});

  @override
  Widget build(BuildContext context) {
    final offices = [
      {"name": "ICS ", "image": "assets/office1.jpg"},
      {"name": "Gumruk Authority", "image": "assets/office2.jpg"},
      {"name": "Gebiwoch Court", "image": "assets/office3.jpg"},
      {"name": "Post Office", "image": "assets/office4.jpg"},
      {"name": "Electric Power Service", "image": "assets/office5.jpg"},
      {"name": "Adama Science And Technology University", "image": "assets/office6.jpg"},
      {"name": "Ethio Telecom Office", "image": "assets/office7.jpg"},
      {"name": "Adama City Adminstration", "image": "assets/view1.jpg"},
      {"name": "Medhen Office", "image": "assets/office9.jpg"},
      {"name": "Land Management Office", "image": "assets/office10.jpg"},
    ];

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/logo.png', height: 40),
        ),
        title: const Text("Government Offices in Adama"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: offices.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(
                offices[index]["image"]!,
                width: 150,
                height: 250,
                fit: BoxFit.cover,
              ),
              title: Text(offices[index]["name"]!),
            ),
          );
        },
      ),
    );
  }
}