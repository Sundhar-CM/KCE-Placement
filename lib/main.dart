import 'package:demo_apllication/Pages/home_page.dart';
import 'package:demo_apllication/splash_screen.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}


