import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter1/constants/routes.dart';
import 'package:project_flutter1/firebase_options.dart';
import 'package:project_flutter1/register_view.dart';
import 'package:project_flutter1/verify_email_view.dart';
import 'package:project_flutter1/view/login_view.dart';
import 'package:project_flutter1/view/hotels_view.dart';
import 'package:project_flutter1/view/hospitals_view.dart';
import 'package:project_flutter1/view/offices_view.dart';
import 'package:project_flutter1/view/city_view.dart';
import 'package:project_flutter1/view/services_view.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      title: 'Adama City Discovery',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 29, 60, 104), 
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 29, 60, 104), 
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        cardTheme: CardThemeData(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black87),
          bodyMedium: TextStyle(color: Colors.black54),
        ),
      ),
      home: const HomePage(),
      routes: {
        loginRoute: (context) => const LoginView(title: "Login"),
        registerRoute: (context) => const RegisterView(),
        servicesRoute: (context) => const ServicesView(),
        verifyEmailRoute: (context) => const VerifyEmailView(),
        hotelsRoute: (context) => const HotelsView(),
        hospitalsRoute: (context) => const HospitalsView(),
        governmentOfficesRoute: (context) => const OfficesView(),
        cityViewsRoute: (context) => const CityView(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final user = FirebaseAuth.instance.currentUser;
            if (user != null) {
              if (user.emailVerified) {
                return const ServicesView();
              } else {
                return const VerifyEmailView();
              }
            } else {
              return const LoginView(title: "Login");
            }
          default:
            return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}