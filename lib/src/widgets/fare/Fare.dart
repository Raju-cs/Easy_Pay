import 'package:Easy_pay/src/widgets/fare/Fare1.dart';
import 'package:Easy_pay/src/widgets/nav.dart';
import 'package:flutter/material.dart';

import '../../common.dart';

class Fare extends StatefulWidget {
  @override
  _FareState createState() => _FareState();
}

class _FareState extends State<Fare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text("Fare Details"),
        elevation: 1.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: grey,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueGrey,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 3),
                      blurRadius: 10,
                    ),
                  ]),
              child: IconButton(
                  color: Colors.blue,
                  icon: Icon(
                    Icons.home,
                    color: black,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Nav();
                    }));
                  }),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 350,
                    width: 340,
                    decoration: BoxDecoration(color: white, boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 3),
                        blurRadius: 10,
                      ),
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Anik Bus",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          buildRow(
                              "Azimpur", "Kalabagan -> Rasel Square", "6/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "PanthaPath -> Bashundhara", "6/-"),
                          Divider(),
                          buildRow("Azimpur", "Kawran Bazar", "6/-"),
                          Divider(),
                          buildRow("Azimpur", "Satrashta -> Tibat", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Mohakhali -> Kakoli", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Khilketh -> Bishwaroad", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Airport->Uttara,", "12/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "Azampur->Housing Building", "12/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "Tongi Station->College Gate", "12/-"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 350,
                    width: 340,
                    decoration: BoxDecoration(color: white, boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 3),
                        blurRadius: 10,
                      ),
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Ababil",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          buildRow(
                              "Azimpur", "Kalabagan -> Rasel Square", "6/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "PanthaPath -> Bashundhara", "6/-"),
                          Divider(),
                          buildRow("Azimpur", "Kawran Bazar", "6/-"),
                          Divider(),
                          buildRow("Azimpur", "Satrashta -> Tibat", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Mohakhali -> Kakoli", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Khilketh -> Bishwaroad", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Airport->Uttara,", "12/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "Azampur->Housing Building", "12/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "Tongi Station->College Gate", "12/-"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 350,
                    width: 340,
                    decoration: BoxDecoration(color: white, boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 3),
                        blurRadius: 10,
                      ),
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Ababil",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          buildRow(
                              "Azimpur", "Kalabagan -> Rasel Square", "6/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "PanthaPath -> Bashundhara", "6/-"),
                          Divider(),
                          buildRow("Azimpur", "Kawran Bazar", "6/-"),
                          Divider(),
                          buildRow("Azimpur", "Satrashta -> Tibat", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Mohakhali -> Kakoli", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Khilketh -> Bishwaroad", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Airport->Uttara,", "12/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "Azampur->Housing Building", "12/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "Tongi Station->College Gate", "12/-"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 350,
                    width: 340,
                    decoration: BoxDecoration(color: white, boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 3),
                        blurRadius: 10,
                      ),
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Ababil",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          buildRow(
                              "Azimpur", "Kalabagan -> Rasel Square", "6/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "PanthaPath -> Bashundhara", "6/-"),
                          Divider(),
                          buildRow("Azimpur", "Kawran Bazar", "6/-"),
                          Divider(),
                          buildRow("Azimpur", "Satrashta -> Tibat", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Mohakhali -> Kakoli", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Khilketh -> Bishwaroad", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Airport->Uttara,", "12/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "Azampur->Housing Building", "12/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "Tongi Station->College Gate", "12/-"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 350,
                    width: 340,
                    decoration: BoxDecoration(color: white, boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 3),
                        blurRadius: 10,
                      ),
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Ababil",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          buildRow(
                              "Azimpur", "Kalabagan -> Rasel Square", "6/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "PanthaPath -> Bashundhara", "6/-"),
                          Divider(),
                          buildRow("Azimpur", "Kawran Bazar", "6/-"),
                          Divider(),
                          buildRow("Azimpur", "Satrashta -> Tibat", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Mohakhali -> Kakoli", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Khilketh -> Bishwaroad", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Airport->Uttara,", "12/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "Azampur->Housing Building", "12/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "Tongi Station->College Gate", "12/-"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 350,
                    width: 340,
                    decoration: BoxDecoration(color: white, boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 3),
                        blurRadius: 10,
                      ),
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Ababil",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          buildRow(
                              "Azimpur", "Kalabagan -> Rasel Square", "6/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "PanthaPath -> Bashundhara", "6/-"),
                          Divider(),
                          buildRow("Azimpur", "Kawran Bazar", "6/-"),
                          Divider(),
                          buildRow("Azimpur", "Satrashta -> Tibat", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Mohakhali -> Kakoli", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Khilketh -> Bishwaroad", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Airport->Uttara,", "12/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "Azampur->Housing Building", "12/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "Tongi Station->College Gate", "12/-"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 350,
                    width: 340,
                    decoration: BoxDecoration(color: white, boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 3),
                        blurRadius: 10,
                      ),
                    ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            "Ababil",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          buildRow(
                              "Azimpur", "Kalabagan -> Rasel Square", "6/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "PanthaPath -> Bashundhara", "6/-"),
                          Divider(),
                          buildRow("Azimpur", "Kawran Bazar", "6/-"),
                          Divider(),
                          buildRow("Azimpur", "Satrashta -> Tibat", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Mohakhali -> Kakoli", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Khilketh -> Bishwaroad", "12/-"),
                          Divider(),
                          buildRow("Azimpur", "Airport->Uttara,", "12/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "Azampur->Housing Building", "12/-"),
                          Divider(),
                          buildRow(
                              "Azimpur", "Tongi Station->College Gate", "12/-"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: IconButton(
                color: Colors.blue,
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Fare1();
                  }));
                }),
          ),
        ],
      ),
    );
  }

  Row buildRow(String from, String to, String fare) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(from),
        Text(to),
        Text(fare),
      ],
    );
  }
}
