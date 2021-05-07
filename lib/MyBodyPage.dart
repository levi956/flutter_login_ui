import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyBodyPage extends StatefulWidget {
  @override
  _MyBodyPageState createState() => _MyBodyPageState();
}

class _MyBodyPageState extends State<MyBodyPage> {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisSize: MainAxisSize.min,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image(
              //height: MediaQuery.of(context).size.height * 0.25,
              //width: 350,
              //fit: BoxFit.fill,
              height: 30.h,
              image: AssetImage(
                'images/pixeltrue.png',
              ),
            ),
          ),
          Container(
            //height: 15.h,
            //height: 34,
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
            obscureText: false,
            style: style,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "EMAIL",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0))),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: false,
            style: style,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                hintText: "PASSWORD",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0))),
          ),
          SizedBox(
            height: 2.9.h,
          ),
          Container(
              height: 10.h,
              alignment: Alignment.center,
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(30.0),
                color: Color(0xff01A0C7),
                child: FlatButton(
                  minWidth: 250.0,
                  //height: 3.h,
                  //padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  onPressed: () {
                    //..
                    print('Login Tap');
                  },
                  child: Text("LOGIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.deepOrange[400],
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 20)),
                ),
              )),
          Center(
              child: TextButton(
            onPressed: () {
              //..
              print('You forgot password');
            },
            child: Text('Forgot Password?',
                style: TextStyle(
                    color: Colors.deepOrange[400],
                    fontFamily: 'Poppins',
                    fontSize: 15)),
          )),
          SizedBox(
            height: 0.5.h,
          ),
          Center(
              child: Text('Don\'t have an account? Sign up!',
                  style: TextStyle(
                      color: Colors.deepOrange[400],
                      fontFamily: 'Poppins',
                      fontSize: 15)))
        ],
      ),
    );
  }
}
