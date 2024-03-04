// ignore_for_file: prefer_const_constructors

import 'package:demo_apllication/CompanyList/company_details.dart';
import 'package:demo_apllication/CompanyList/company_list.dart';
import 'package:flutter/material.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({super.key});

  @override
  State<CompanyPage> createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 81, 31),
        title: Text('Comapny List'),
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
                  'List of Companies hire in KCE',
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
                itemCount: company.length,
                itemBuilder: (context, index) {
                  CompanyList companyView = company[index];
                  return Card(
                    child: ListTile(
                      leading: Image.asset(
                        companyView.companyImage,
                        width: 60,
                      ),
                      title: Text(companyView.companyName),
                      subtitle: Text(companyView.companyType),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CompanyDetails(companyView: companyView)));
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
