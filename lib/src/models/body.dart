import 'package:Easy_pay/src/common.dart';
import 'package:Easy_pay/src/screens/login.dart';

import 'package:Easy_pay/src/screens/signup.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            child: Image.asset("images/main_top.png"),
            width: size.width * 0.5,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset("images/main_bottom.png"),
            width: size.width * 0.3,
          ),
          Positioned(
            top: 250,
            left: 70,
            child: Text(
              "EASY_PAY",
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w700,
                  color: Colors.lightBlueAccent),
            ),
          ),
          Positioned(
            top: 330,
            left: 100,
            child: Container(
              width: size.width * 0.4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  color: blue,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Login();
                    }));
                  },
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: white),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 100,
            child: Container(
              width: size.width * 0.4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  color: Colors.amber,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Signup();
                    }));
                  },
                  child: Text(
                    "SIGNUP",
                    style: TextStyle(color: black),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
