import 'package:flutter/material.dart';

class CityView extends StatelessWidget {
  const CityView({super.key});

  @override
  Widget build(BuildContext context) {
    final views = [
      {"name": "Adama Skyline", "image": "assets/view1.jpg"},
      {"name": "Wenji Bridge", "image": "assets/view2.jpg"},
      {"name": "Adama Park", "image": "assets/view3.jpg"},
      {"name": "Rift Valley View", "image": "assets/view4.jpg"},
      {"name": "Main Street", "image": "assets/view5.jpg"},
      {"name": "Cultural Center", "image": "assets/view6.jpg"},
      {"name": "Sunset Point", "image": "assets/view7.jpg"},
      {"name": "Market Square", "image": "assets/view8.jpg"},
      {"name": "Historical Monument", "image": "assets/view9.jpg"},
      {"name": "Adama Riverbank", "image": "assets/view10.jpg"},
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
                width: 80,
                height: 80,
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