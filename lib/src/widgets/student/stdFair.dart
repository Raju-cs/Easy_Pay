import 'package:flutter/material.dart';

import '../../common.dart';

class Student extends StatefulWidget {
  @override
  _StudentState createState() => _StudentState();
}

class _StudentState extends State<Student> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: red[100],
                        offset: Offset(4, 6),
                        blurRadius: 10,
                      )
                    ]),
                child: Center(
                  child: Text(
                    "Student Fare Details",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Fare Allowed Bus",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0, 3),
                  blurRadius: 10,
                ),
              ]),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FlatButton(
                        onPressed: () {},
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(50.0),
                        ),
                        child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: red[100],
                                    offset: Offset(4, 6),
                                    blurRadius: 10,
                                  ),
                                ]),
                            child: Center(
                              child: Text(
                                "Bus Name",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: red[100],
                                    offset: Offset(4, 6),
                                    blurRadius: 10,
                                  ),
                                ]),
                            child: Center(
                              child: Text(
                                "Bus Name",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: red[100],
                                    offset: Offset(4, 6),
                                    blurRadius: 10,
                                  ),
                                ]),
                            child: Center(
                              child: Text(
                                "Bus Name",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: red[100],
                                    offset: Offset(4, 6),
                                    blurRadius: 10,
                                  ),
                                ]),
                            child: Center(
                              child: Text(
                                "Bus Name",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: red[100],
                                    offset: Offset(4, 6),
                                    blurRadius: 10,
                                  ),
                                ]),
                            child: Center(
                              child: Text(
                                "Bus Name",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: red[100],
                                    offset: Offset(4, 6),
                                    blurRadius: 10,
                                  ),
                                ]),
                            child: Center(
                              child: Text(
                                "Bus Name",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Fare Not Allowed Bus",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0, 3),
                  blurRadius: 10,
                ),
              ]),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FlatButton(
                        onPressed: () {},
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(50.0),
                        ),
                        child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: red[100],
                                    offset: Offset(4, 6),
                                    blurRadius: 10,
                                  ),
                                ]),
                            child: Center(
                              child: Text(
                                "Bus Name",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: red[100],
                                    offset: Offset(4, 6),
                                    blurRadius: 10,
                                  ),
                                ]),
                            child: Center(
                              child: Text(
                                "Bus Name",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: red[100],
                                    offset: Offset(4, 6),
                                    blurRadius: 10,
                                  ),
                                ]),
                            child: Center(
                              child: Text(
                                "Bus Name",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: red[100],
                                    offset: Offset(4, 6),
                                    blurRadius: 10,
                                  ),
                                ]),
                            child: Center(
                              child: Text(
                                "Bus Name",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: red[100],
                                    offset: Offset(4, 6),
                                    blurRadius: 10,
                                  ),
                                ]),
                            child: Center(
                              child: Text(
                                "Bus Name",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
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
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: red[100],
                                    offset: Offset(4, 6),
                                    blurRadius: 10,
                                  ),
                                ]),
                            child: Center(
                              child: Text(
                                "Bus Name",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: black,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      ),
                    ],
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
