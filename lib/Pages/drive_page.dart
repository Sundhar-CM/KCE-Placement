// ignore_for_file: prefer_const_constructors

import 'package:demo_apllication/DriveList/company_drive.dart';
import 'package:demo_apllication/DriveList/drive_details.dart';
import 'package:flutter/material.dart';

class DrivePage extends StatefulWidget {
  const DrivePage({super.key});

  @override
  State<DrivePage> createState() => _DrivePageState();
}

class _DrivePageState extends State<DrivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 81, 31),
        title: Text('Drive Page'),

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  'List of Companies Attended',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: drive.length,
                itemBuilder: (context, index) {
                  CompanyDrive driveList = drive[index];
                  return Card(
                    child: ListTile(
                      leading: Image.asset(
                        driveList.companyImage,
                        width: 60,
                      ),
                      title: Text(driveList.companyName),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DriveDetails(driveList: driveList,)));
                      },
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}