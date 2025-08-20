import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter1/firebase_options.dart';
import 'package:project_flutter1/register_view.dart';
import 'package:project_flutter1/verify_email_view.dart';
import 'package:project_flutter1/view/login_view.dart';

//import 'package:project_flutter1/view/login_view.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
           primarySwatch: Colors.blue,
        ),
      home: const HomePage(),
     routes: {
      '/login/': (context) => const LoginView(title: "Login"),
            '/register/': (context) => const RegisterView(),

     },
  ),
);
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return FutureBuilder(
        future:Firebase.initializeApp(
 options: DefaultFirebaseOptions.currentPlatform,
),
        builder:(context, snapshot){
          switch (snapshot.connectionState){
            case ConnectionState.done:
           final user = FirebaseAuth.instance.currentUser;
        if (user != null){
          if(user.emailVerified){
          print ("email is verified");
        } else{
          return const VerifyEmailView();
        }
        }else{
          return const LoginView(title: "Login");
        
        }
        return const Text('Done');

       default:
          
          return const  CircularProgressIndicator();
          
          }
  },
  );
   }
   }
   
  
