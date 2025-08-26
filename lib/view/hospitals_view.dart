import 'package:flutter/material.dart';

class HospitalsView extends StatelessWidget {
  const HospitalsView({super.key});

  @override
  Widget build(BuildContext context) {
    final hospitals = [
      {"name": "Adama General Hospital", "services": "Emergency, Surgery, Pediatrics", "image": "assets/hospital1.jpg"},
      {"name": "Muse Hospital", "services": "Maternity, Orthopedics", "image": "assets/hospital2.jpg"},
      {"name": "Rift Vally Hospital", "services": "Cardiology, General Medicine", "image": "assets/hospital3.jpg"},
      {"name": "Adama Hospital", "services": "Neurology, ICU", "image": "assets/hospital4.jpg"},
      {"name": "Awash Hospital", "services": "Outpatient, Dental", "image": "assets/hospital5.jpg"},
      {"name": "Yoya Hospital", "services": "Gynecology, Radiology", "image": "assets/hospital6.jpg"},
      {"name": "Aklesia Hospital", "services": "Pediatrics, ENT", "image": "assets/hospital7.jpg"},
      {"name": "Noah Clinic", "services": "General Surgery, Lab Services", "image": "assets/hospital8.jpg"},
      {"name": "Bati Specialized Hospital", "services": "Oncology, Dialysis", "image": "assets/hospital9.jpg"},
      {"name": " Rama Clinic", "services": "Dermatology, Pharmacy", "image": "assets/hospital10.jpg"},
    ];

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/logo.png', height: 40),
        ),
        title: const Text("Hospitals in Adama"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: hospitals.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(
                hospitals[index]["image"]!,
                width: 150,
                height: 250,
                fit: BoxFit.cover,
              ),
              title: Text(hospitals[index]["name"]!),
              subtitle: Text(hospitals[index]["services"]!),
            ),
          );
        },
      ),
    );
  }
}