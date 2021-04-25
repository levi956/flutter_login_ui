import 'package:flutter/material.dart';

class MyBodyPage extends StatefulWidget {
  @override
  _MyBodyPageState createState() => _MyBodyPageState();
}

class _MyBodyPageState extends State<MyBodyPage> {
  get style => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image(
            image: AssetImage('images/pixeltrue.png'),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Login',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Please sign in to continue.',
              style: TextStyle(
                  fontSize: 17, color: Colors.grey, fontFamily: 'Poppins'),
            ),
          ),
          SizedBox(
            height: 40,
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
            height: 30,
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
            height: 15,
          ),
          Container(
              margin: EdgeInsets.only(left: 60),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(30.0),
                color: Color(0xff01A0C7),
                child: MaterialButton(
                  minWidth: 250.0,
                  height: 70,
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  onPressed: () {},
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
              child: Text('Forgot Password?',
                  style: TextStyle(
                      color: Colors.deepOrange[400],
                      fontFamily: 'Poppins',
                      fontSize: 15))),
          SizedBox(
            height: 39,
          ),
          Center(
              child: Text('Don\'t have an account, Sign up',
                  style: TextStyle(
                      color: Colors.deepOrange[400],
                      fontFamily: 'Poppins',
                      fontSize: 15)))
        ],
      ),
    );
  }
}
