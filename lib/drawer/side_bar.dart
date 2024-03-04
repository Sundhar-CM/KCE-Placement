// ignore_for_file: prefer_const_constructors

import 'package:demo_apllication/Pages/companies_page.dart';
import 'package:demo_apllication/Pages/drive_page.dart';
import 'package:demo_apllication/Pages/profile_page.dart';
import 'package:demo_apllication/Pages/test_page.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key, required this.emailAddress});

  final String emailAddress;

  //final user=FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      child: ListView(
        children: [
          Center(
            child: UserAccountsDrawerHeader(
              accountName: Text(
                "Sundhar CM",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                //user.email!,
                emailAddress,
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage('img/profile.jpeg'),
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 248, 81, 31),
              ),
            ),
          ),
          ListTile(
            title: Text("My Details"),
            leading: Icon(Icons.person_2_outlined),
            onTap: () => {
              Navigator.pop(context),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  Profilepage(emailAddress: emailAddress,)))
            },
          ),
          Divider(),
          ListTile(
            title: Text('Companies'),
            leading: Icon(Icons.location_city_rounded),
            onTap: () => {
              Navigator.pop(context),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CompanyPage()))
            },
          ),
          Divider(),
          ListTile(
            title: Text('Drive'),
            leading: Icon(Icons.contact_mail_rounded),
            onTap: () => {
              Navigator.pop(context),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DrivePage()))
            },
          ),
          Divider(),
          ListTile(
            title: Text('Test'),
            leading: Icon(Icons.note_add_rounded),
            onTap: () => {
              Navigator.pop(context),
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TestPage()))
            },
          ),
        ],
      ),
    );
  }
}
