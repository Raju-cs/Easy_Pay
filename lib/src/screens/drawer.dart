import 'package:Easy_pay/src/common.dart';
import 'package:Easy_pay/src/screens/about.dart';
import 'package:Easy_pay/src/screens/home.dart';
import 'package:Easy_pay/src/screens/profile.dart';
import 'package:Easy_pay/src/screens/setting.dart';

import 'package:Easy_pay/src/widgets/nav.dart';
import 'package:flutter/material.dart';

class Drawers extends StatefulWidget {
  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<Drawers> {
  int index = 0;
  List<Widget> list = [
    Home(),
    Settings(),
    Profile(),
    About(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[index],
    );
  }
}

class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Raju hasan"),
              accountEmail: Text("countattack06@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: black,
                  child: Icon(
                    Icons.person,
                    color: white,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Nav();
                }));
              },
              child: ListTile(
                title: Text(
                  "Home",
                ),
                leading: Icon(Icons.home),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Profile();
                }));
              },
              child: ListTile(
                title: Text(
                  "Profile",
                ),
                leading: Icon(Icons.person),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Settings();
                }));
              },
              child: ListTile(
                title: Text(
                  "Setting",
                ),
                leading: Icon(Icons.settings),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return About();
                }));
              },
              child: ListTile(
                title: Text(
                  "About",
                ),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
