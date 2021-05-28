import 'package:Easy_pay/src/common.dart';
import 'package:Easy_pay/src/screens/login.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _termAgrred = false;

  var email;
  var password;
  register() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    final FirebaseUser user = (await firebaseAuth
            .createUserWithEmailAndPassword(email: email, password: password))
        .user;
    if (user != null) {
      Navigator.push(
          context, CupertinoPageRoute(builder: (context) => Login()));
    } else {
      print("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Material(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: white,
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
                width: size.width * 0.3,
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
                                              setState(() {
                                                email = value;
                                              });
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
                top: 380,
                left: 30,
                child: Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.orange,
                        value: _termAgrred,
                        onChanged: (newValue) {
                          setState(() {
                            _termAgrred = newValue;
                          });
                        }),
                    Text(
                      "Agreed Terms & Conditions of Easy_Pay",
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 430,
                left: 85,
                child: Container(
                  width: 200,
                  height: 50,
                  child: RaisedButton(
                    onPressed: register,
                    color: Colors.black,
                    textColor: white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: Text(
                      "Signup",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
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
