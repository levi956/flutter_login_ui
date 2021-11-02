import 'package:flutter/material.dart';
import 'package:flutter_project_1/views/login_view.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: ThemeData(primaryColor: Colors.indigo[800]),
          debugShowCheckedModeBanner: false,
          title: 'DEMO LOGIN PAGE',
          home: LoginView(),
        );
      },
    );
  }
}
