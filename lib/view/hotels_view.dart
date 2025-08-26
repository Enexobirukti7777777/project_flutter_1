import 'package:flutter/material.dart';

class HotelsView extends StatelessWidget {
  const HotelsView({super.key});

  @override
  Widget build(BuildContext context) {
    final hotels = [
      {"name": "haile reosrt Hotel", "price": "1500 ETB/night", "image": "assets/hotel1.jpg"},
      {"name": "Safari Lodge", "price": "1200 ETB/night", "image": "assets/hotel2.jpg"},
      {"name": "Blue Nile Hotel", "price": "1000 ETB/night", "image": "assets/hotel3.jpg"},
      {"name": "Royal Inn", "price": "1800 ETB/night", "image": "assets/hotel4.jpg"},
      {"name": "Green View Hotel", "price": "1300 ETB/night", "image": "assets/hotel5.jpg"},
      {"name": "Sunrise Hotel", "price": "1100 ETB/night", "image": "assets/hotel6.jpg"},
      {"name": "Moonlight Lodge", "price": "1400 ETB/night", "image": "assets/hotel7.jpg"},
      {"name": "Star Hotel", "price": "1600 ETB/night", "image": "assets/hotel8.jpg"},
      {"name": "Harmony Hotel", "price": "1250 ETB/night", "image": "assets/hotel9.jpg"},
      {"name": "Golden Gate Hotel", "price": "1700 ETB/night", "image": "assets/hotel10.jpg"},
    ];

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/logo.png', height: 40),
        ),
        title: const Text("Hotels in Adama"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: hotels.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(
                hotels[index]["image"]!,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              title: Text(hotels[index]["name"]!),
              subtitle: Text(hotels[index]["price"]!),
            ),
          );
        },
      ),
    );
  }
}