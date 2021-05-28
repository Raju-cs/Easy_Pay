import 'package:Easy_pay/src/screens/home.dart';
import 'package:Easy_pay/src/screens/profile.dart';
import 'package:Easy_pay/src/widgets/QRScan%20&%20Generate.dart';

import 'package:flutter/material.dart';

import '../common.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  var _currentindex = 0;
  final pages = [
    Home(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentindex],
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.send),
          backgroundColor: Colors.orangeAccent,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Qrscan();
            }));
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: blue,
        currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
