import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.indigo[900],
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image(
                  height: 30.h,
                  image: AssetImage(
                    'images/pixeltrue.png',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  'Please sign in to continue.',
                  style: TextStyle(
                      fontSize: 15, color: Colors.grey, fontFamily: 'Poppins'),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                style: TextStyle(color: Colors.white),
                obscureText: false,
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: Icon(Icons.email, color: Colors.white),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Enter your email address",
                  hintStyle: TextStyle(
                      color: Colors.white, fontSize: 15, fontFamily: 'Poppins'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Colors.white),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Enter your password",
                  hintStyle: TextStyle(
                      color: Colors.white, fontSize: 15, fontFamily: 'Poppins'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              SizedBox(
                height: 2.9.h,
              ),
              GestureDetector(
                onTap: () {
                  print('I was pressed');
                },
                child: Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  alignment: Alignment.center,
                  height: 7.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.deepOrange[400],
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    print('You forgot password');
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Colors.deepOrange[400],
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    print('I was pressed');
                  },
                  child: Text(
                    'Don\'t have an account? Sign up!',
                    style: TextStyle(
                        color: Colors.deepOrange[400],
                        fontFamily: 'Poppins',
                        fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
