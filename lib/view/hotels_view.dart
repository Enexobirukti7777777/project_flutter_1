import 'package:flutter/material.dart';

class HotelsView extends StatelessWidget {
  const HotelsView({super.key});

  @override
  Widget build(BuildContext context) {
    final hotels = [
      {"name": "Tokuma Hotel", "price": "1500 ETB/night", "image": "assets/hotel1.jpg"},
      {"name": "Hiele Risort", "price": "1200 ETB/night", "image": "assets/hotel2.jpg"},
      {"name": "Robi Hotel", "price": "1000 ETB/night", "image": "assets/hotel3.jpg"},
      {"name": "J Resort", "price": "1800 ETB/night", "image": "assets/hotel4.jpg"},
      {"name": "Naflet Hotel", "price": "1300 ETB/night", "image": "assets/hotel5.jpg"},
      {"name": "Dire Int  Hotel", "price": "1100 ETB/night", "image": "assets/hotel6.jpg"},
      {"name": "Hill Side Adama Hotel", "price": "1400 ETB/night", "image": "assets/hotel7.jpg"},
      {"name": "Rift Vally Hotel", "price": "1600 ETB/night", "image": "assets/hotel8.jpg"},
      {"name": "Kereyu Hotel", "price": "1250 ETB/night", "image": "assets/hotel9.jpg"},
      {"name": "Eftah Gate Hotel", "price": "1700 ETB/night", "image": "assets/hotel10.jpg"},
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
                width: 150,
                height: 250,
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