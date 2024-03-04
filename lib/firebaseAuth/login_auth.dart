import 'package:demo_apllication/Pages/home_page.dart';
import 'package:demo_apllication/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginAuth extends StatelessWidget {
  const LoginAuth({super.key, required this.emailAddress});

  final String emailAddress;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              return  HomePage(emailAddress: emailAddress,);
            }
            else{
              return const LoginPage();
            }
          }),
    );
  }
}
