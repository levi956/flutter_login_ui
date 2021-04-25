import 'package:flutter/material.dart';
import 'package:flutter_project_1/MyBodyPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.indigo[800]),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Project 1',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo[900],
        body: MyBodyPage(),
      ),
    );
  }
}
