//import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_flutter1/constants/routes.dart';
import 'package:project_flutter1/view/utilities/show_error_dialog.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
        title: const Text("register"),
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
              await FirebaseAuth.instance.createUserWithEmailAndPassword(
              email: email,
             password: password,
             );
             
              Navigator.of(context).pushNamed(verifyEmailRoute);
             }
               on FirebaseAuthException catch (e){
                if (e.code == 'weak-password'){
                  await showErrorDialog(
                    context,
                     "weak password");
                }else if(e.code == 'email-already-in-use') {
                  await showErrorDialog(
                    context,
                     "email already in use");
                }
                else if (e.code == 'invalid-email'){
                   await showErrorDialog(
                    context,
                     "invalid email",
                     );
                }else {
                  await showErrorDialog(
                    context, 
                    "Error ${e.code}",
                  );
                }
               }catch(e){
                await showErrorDialog(context, e.toString(),
                );
               }
          },
        child: const Text('Register'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(loginRoute, (route) => false,
            );
        }, 
        child: Text("already registered? Login here!"),
        )

        ]
        ),
    );
  }}
  