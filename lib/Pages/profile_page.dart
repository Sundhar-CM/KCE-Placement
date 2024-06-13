// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Profilepage extends StatelessWidget {
  //final String title;

  Profilepage({
    super.key,
  });

  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 81, 31),
        title: Text('Profile Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  )),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      maxRadius: 50,
                      minRadius: 50,
                      backgroundColor: Colors.orange,
                      backgroundImage: AssetImage('img/profile-158.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sundhar C M',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'B.E Computer Science and Technology',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  ProfileData(title: 'Register Number', value: '717821s158'),
                  ProfileData(title: 'Academic Year', value: '2021-2025'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  ProfileData(
                      title: 'Department',
                      value: 'Computer Science\nand Technology'),
                  ProfileData(title: 'Year', value: 'III year'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  ProfileData(title: 'Placement Batch', value: 'SDE-2'),
                  ProfileData(
                      title: 'Day scholar\\Hosteller', value: 'Day Scholar'),
                ],
              ),
            ),
            ProfileDown(
                colTitle: 'Email Address', colValue: user!.email.toString()),
            ProfileDown(colTitle: 'Phone Number', colValue: '9876543210'),
            ProfileDown(
                colTitle: 'Personal Email Address', colValue: 'xyz@gmail.com'),
          ],
        ),
      ),
    );
  }
}

class ProfileData extends StatelessWidget {
  const ProfileData({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 5, left: 5, top: 10, bottom: 10),
      width: MediaQuery.of(context).size.width / 2.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(value),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: Divider(
                  thickness: 1,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileDown extends StatelessWidget {
  const ProfileDown(
      {super.key, required this.colTitle, required this.colValue});

  final String colTitle;
  final String colValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                colTitle,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(colValue),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Divider(
                  thickness: 1,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
