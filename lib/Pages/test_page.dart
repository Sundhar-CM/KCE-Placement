// ignore_for_file: prefer_const_constructors

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
        title: Text('Test page'),
        backgroundColor: Color.fromARGB(255, 248, 81, 31),
      ),
      body: Center(
        child: Text('title'),
      ),
    );
  }
}