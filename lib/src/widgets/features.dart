import 'package:Easy_pay/src/common.dart';
import 'package:Easy_pay/src/widgets/map.dart';

import 'package:flutter/material.dart';

class Features extends StatelessWidget {
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
                SizedBox(
                  height: 5,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Google();
                    }));
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(70.0),
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
                            Icon(Icons.add_location),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Location",
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
                  onPressed: () {},
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(70.0),
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
                            Icon(Icons.games),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Games",
                              style: TextStyle(fontSize: 7),
                            ),
                          ],
                        ),
                      )),
                ),
                FlatButton(
                  onPressed: () {},
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(70.0),
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
                            Icon(Icons.more_vert),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "More",
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
