import 'package:Easy_pay/src/widgets/bus/busdetails.dart';
import 'package:Easy_pay/src/widgets/fare/Fare.dart';
import 'package:Easy_pay/src/widgets/student/stdFair.dart';

import 'package:flutter/material.dart';

import '../common.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 95,
        width: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              children: [
                FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Student();
                    }));
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                  ),
                  child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: red[100],
                              offset: Offset(4, 6),
                              blurRadius: 10,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Icon(Icons.school),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Student Price",
                              style: TextStyle(fontSize: 7),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 5,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Busdetail();
                    }));
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                  ),
                  child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: red[100],
                              offset: Offset(4, 6),
                              blurRadius: 10,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Image.asset("images/bus.png"),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Bus Details",
                              style: TextStyle(fontSize: 7),
                            ),
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  height: 5,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Fare();
                    }));
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                  ),
                  child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: red[100],
                              offset: Offset(4, 6),
                              blurRadius: 10,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Icon(Icons.attach_money),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Fare Details",
                              style: TextStyle(fontSize: 7),
                            ),
                          ],
                        ),
                      )),
                ),
                FlatButton(
                  onPressed: () {},
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(50.0),
                  ),
                  child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: red[100],
                              offset: Offset(4, 6),
                              blurRadius: 10,
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Icon(Icons.payment),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Bill Pay",
                              style: TextStyle(fontSize: 7),
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            )
          ],
        ));
  }
}
