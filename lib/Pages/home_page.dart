// ignore_for_file: prefer_const_constructors

import 'package:demo_apllication/Pages/companies_page.dart';
import 'package:demo_apllication/Pages/drive_page.dart';
import 'package:demo_apllication/Pages/profile_page.dart';
import 'package:demo_apllication/drawer/side_bar.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser!;
  final String emailAddress;
  PlatformFile? pickedFile;
  String? _fileName;

  HomePage({super.key, required this.emailAddress});
  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      allowedExtensions: ['pdf'],
    );
    if (result == null) return;
    _fileName = result.files.first.name;
    pickedFile = result.files.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 248, 81, 31),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(26),
                  bottomRight: Radius.circular(26))),
        ),
        title: Text('Welcome to demo'),
        actions: [
          SizedBox(
            width: 60,
            child: GestureDetector(
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profilepage()))
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset(
                  'img/profile.jpeg',
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                'Hello Student!',
                style: GoogleFonts.lobster(
                  fontSize: 30,
                  color: Color.fromARGB(255, 202, 55, 11),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'Get your Complete Details of Placement ',
                style: GoogleFonts.lexend(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DrivePage()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(111, 240, 224, 212),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Icon(
                            Icons.contact_mail_rounded,
                            size: 30,
                          ),
                        ),
                        Text(
                          'Drives',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text('View Attended Drives')
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CompanyPage()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(111, 240, 224, 212),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Icon(
                            Icons.location_city_rounded,
                            size: 30,
                          ),
                        ),
                        Text(
                          'Companies',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          '  List of Companies ',
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Update Your Resume',
                style: GoogleFonts.catamaran(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: Image.asset(
                'img/resume.png',
                height: 300,
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: selectFile,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange),
                child: Text(
                  'Select',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
