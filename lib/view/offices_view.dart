import 'package:flutter/material.dart';

class OfficesView extends StatelessWidget {
  const OfficesView({super.key});

  @override
  Widget build(BuildContext context) {
    final offices = [
      {"name": "Adama City Administration", "image": "assets/office1.jpg"},
      {"name": "Revenue Authority", "image": "assets/office2.jpg"},
      {"name": "Municipal Court", "image": "assets/office3.jpg"},
      {"name": "Health Bureau", "image": "assets/office4.jpg"},
      {"name": "Education Office", "image": "assets/office5.jpg"},
      {"name": "Transport Authority", "image": "assets/office6.jpg"},
      {"name": "Water Supply Office", "image": "assets/office7.jpg"},
      {"name": "Urban Planning Office", "image": "assets/office8.jpg"},
      {"name": "Social Affairs Office", "image": "assets/office9.jpg"},
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
                width: 80,
                height: 80,
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