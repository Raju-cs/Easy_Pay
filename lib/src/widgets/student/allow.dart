import 'package:flutter/material.dart';

import '../../common.dart';

class Allow extends StatefulWidget {
  @override
  _Student1State createState() => _Student1State();
}

class _Student1State extends State<Allow> {
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
        child: Center(child: Text("Allow Bus")),
      ),
    );
  }
}
