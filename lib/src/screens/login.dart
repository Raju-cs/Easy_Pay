import 'dart:ui';

import 'package:Easy_pay/src/common.dart';

import 'package:Easy_pay/src/screens/signup.dart';
import 'package:Easy_pay/src/widgets/nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var email;
  var password;
  login() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    final FirebaseUser user = (await firebaseAuth.signInWithEmailAndPassword(
            email: email, password: password))
        .user;
    if (user != null) {
      Navigator.push(context, CupertinoPageRoute(builder: (context) => Nav()));
    } else {
      print("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              child: Image.asset("images/main_top.png"),
              width: size.width * 0.5,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset("images/login_bottom.png"),
              width: size.width * 0.5,
            ),
            Positioned(
              top: 120,
              left: 90,
              child: Container(
                child: Text(
                  "EasyPay",
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 45,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Positioned(
              top: 220,
              child: Center(
                child: Container(
                    width: 370,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 250,
                            child: Material(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                elevation: 5.0,
                                color: grey,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Icon(
                                        Icons.person,
                                        color: white,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: white,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10.0),
                                              bottomRight:
                                                  Radius.circular(10.0))),
                                      width: 200,
                                      height: 60,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          onChanged: (value) {
                                            email = value;
                                          },
                                          decoration: InputDecoration(
                                            fillColor: white,
                                            filled: true,
                                            hintText: "Email",
                                            border: InputBorder.none,
                                          ),
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: black,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            Positioned(
              top: 300,
              child: Center(
                child: Container(
                    width: 370,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 250,
                            child: Material(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                elevation: 5.0,
                                color: grey,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Icon(
                                        Icons.lock,
                                        color: white,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: white,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(10.0),
                                              bottomRight:
                                                  Radius.circular(10.0))),
                                      width: 200,
                                      height: 60,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                          onChanged: (value) {
                                            password = value;
                                          },
                                          obscureText: true,
                                          decoration: InputDecoration(
                                            fillColor: white,
                                            filled: true,
                                            hintText: "Password",
                                            border: InputBorder.none,
                                            suffixIcon: Icon(
                                              Icons.visibility,
                                              color: blue,
                                            ),
                                          ),
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: black,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            Positioned(
              top: 400,
              left: 110,
              child: Container(
                width: 150,
                child: RaisedButton(
                  onPressed: login,
                  color: Colors.grey,
                  textColor: white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 450,
              left: 90,
              child: Row(
                children: [
                  Text(
                    "Don't have an Account ?",
                    style: TextStyle(color: black),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Signup();
                      }));
                    },
                    child: Text(
                      "Sign Up",
                      style:
                          TextStyle(color: blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
