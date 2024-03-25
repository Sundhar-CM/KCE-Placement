// ignore_for_file: prefer_const_constructors

import 'package:demo_apllication/TestList/test_details.dart';
import 'package:demo_apllication/TestList/test_list.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 81, 31),
        title: Text('Test Scores'),
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
                  'Test Results',
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
                itemCount: test.length,
                itemBuilder: (context, index) {
                  TestList testView = test[index];
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.note),
                      title: Text(testView.testName),
                      subtitle: Text(testView.testType),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    TestDetails(testView: testView)));
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
