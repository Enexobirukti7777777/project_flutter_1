import 'package:flutter/material.dart';

class CityView extends StatelessWidget {
  const CityView({super.key});

  @override
  Widget build(BuildContext context) {
    final views = [
      {"name": "Adama city Administration", "image": "assets/view1.jpg"},
      {"name": "Downtown", "image": "assets/view2.jpg"},
      {"name": "Mafi Resturant", "image": "assets/view3.jpg"},
      {"name": "Avica coffee", "image": "assets/view4.jpg"},
      {"name": "Bole Street", "image": "assets/view5.jpg"},
      {"name": "Franko Area", "image": "assets/view6.jpg"},
      {"name": "Express Way", "image": "assets/view7.jpg"},
      {"name": "Posta Bet Dashin Bank ", "image": "assets/view8.jpg"},
      {"name": "Adama City Adminstration ", "image": "assets/view9.jpg"},
      {"name": "Night View Warka", "image": "assets/view10.jpg"},
    ];

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/logo.png', height: 40),
        ),
        title: const Text("City Views in Adama"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: views.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(
                views[index]["image"]!,
                width: 150,
                height: 250,
                fit: BoxFit.cover,
              ),
              title: Text(views[index]["name"]!),
            ),
          );
        },
      ),
    );
  }
}