import 'package:flutter/material.dart';

class HospitalsView extends StatelessWidget {
  const HospitalsView({super.key});

  @override
  Widget build(BuildContext context) {
    final hospitals = [
      {"name": "Adama General Hospital", "services": "Emergency, Surgery, Pediatrics", "image": "assets/hospital1.jpg"},
      {"name": "St. Mary’s Hospital", "services": "Maternity, Orthopedics", "image": "assets/hospital2.jpg"},
      {"name": "Hope Medical Center", "services": "Cardiology, General Medicine", "image": "assets/hospital3.jpg"},
      {"name": "Adama Referral Hospital", "services": "Neurology, ICU", "image": "assets/hospital4.jpg"},
      {"name": "Peace Clinic", "services": "Outpatient, Dental", "image": "assets/hospital5.jpg"},
      {"name": "Unity Hospital", "services": "Gynecology, Radiology", "image": "assets/hospital6.jpg"},
      {"name": "Life Care Hospital", "services": "Pediatrics, ENT", "image": "assets/hospital7.jpg"},
      {"name": "Mercy Clinic", "services": "General Surgery, Lab Services", "image": "assets/hospital8.jpg"},
      {"name": "Adama Specialized Hospital", "services": "Oncology, Dialysis", "image": "assets/hospital9.jpg"},
      {"name": "Faith Medical Center", "services": "Dermatology, Pharmacy", "image": "assets/hospital10.jpg"},
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
                width: 80,
                height: 80,
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