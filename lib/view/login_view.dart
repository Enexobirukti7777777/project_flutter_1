//import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import 'dart:developer' as devtools show log;

class LoginView extends StatefulWidget {
  const LoginView({super.key , required this.title});
final String title; 
  @override
  State<LoginView> createState() => _LoginViewState();
}

// ✅ This is the state class (build method goes here)
class _LoginViewState extends State<LoginView> {
  late final TextEditingController _email;
  late final TextEditingController _password;
  @override
  void initState (){
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }
    @override
  void dispose(){
      _email.dispose();
      _password.dispose();
      super.dispose();
    }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
          title: const Text("Login"),
        ),
      body: Column(
        
          children:[ 
          TextField(controller: _email,
         obscureText: false,
          enableSuggestions: false,
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,
          decoration:const InputDecoration(hintText: 'biruk123@gmail.com')
          ),
          TextField(controller: _password,
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: const InputDecoration(hintText: 'Enter password',),
          
          ),
          TextButton(
          onPressed: () async {
            
            final email = _email.text;
            final password = _password.text;
            try{
              //   final userCredential =              
               await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: email,
             password: password,
             );
             Navigator.of (context).pushNamedAndRemoveUntil("/note/", (route) => false,);
            }
            on FirebaseAuthException catch (e){
               if(e.code == 'user-not-found'){
                devtools.log('user not found');

               }else if ( e.code == "wrong-passward"){
                devtools.log("wrong password");
               }

               } 
               
               },
        child: const Text('Login'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil('/register/',
             (route) => false,
            );
          }, 
          child: const Text("Not registerd yet? Register here!"),
          )
               ],
        ),
    );
  }
  
  
}
