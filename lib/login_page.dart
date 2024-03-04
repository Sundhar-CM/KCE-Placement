// ignore_for_file: prefer_const_constructors

import 'package:demo_apllication/Pages/home_page.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailControl = TextEditingController();
  final _passwordControl = TextEditingController();

  // Future signIn() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: _emailControl.text.trim(),
  //     password: _passwordControl.text.trim()
  //   );
  // }

  // @override
  // void dispose() {
  //   _emailControl.dispose();
  //   _passwordControl.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 230, 229),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [Colors.white, Colors.deepOrange],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    'img/splashLogo.png',
                  ),
                ),
                Text(
                  "Land on Your Dream Job",
                  style: GoogleFonts.concertOne(
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 209, 206, 206),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailControl,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.mail_outlined),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 209, 206, 206),
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: TextField(
                      controller: _passwordControl,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock_outlined),
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () => {
                    //signIn(),
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePage(
                                  emailAddress: _emailControl.text,
                                )))
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 199, 61, 19),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
