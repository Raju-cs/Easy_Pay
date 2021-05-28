import 'package:Easy_pay/src/common.dart';

import 'package:Easy_pay/src/widgets/categories.dart';
import 'package:Easy_pay/src/widgets/custom_text.dart';

import 'package:Easy_pay/src/widgets/rides.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.message,
                color: white,
              ),
              onPressed: () {})
        ],
      ),
      drawer: MyDrawer(),
      drawerScrimColor: black,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Center(
                    child: Container(
                      height: 140,
                      width: 340,
                      child: Image.asset(
                        "images/banner.jpeg",
                      ),
                      decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 40,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomText(
                  text: "Features",
                  size: 18,
                  color: black,
                ),
              ),
            ),
            Categories(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(
                text: "Pupolar Drive",
                size: 18,
                color: black,
              ),
            ),
            Rides(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
