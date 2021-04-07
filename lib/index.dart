import 'package:flutter/material.dart';
import 'package:soho/all_appliances.dart';
import 'package:soho/control.dart';
import 'package:soho/control2.dart';
import 'package:soho/timer.dart';
import 'package:soho/usage.dart';
import 'dashboard.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 246, 255, 1),
          body: ListView(children: <Widget>[
            ListTile(
              title: Text("Dashboard"),
              onTap: () {
                print('hi');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Dashboard(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Usage"),
              onTap: () {
                print('hi');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Usage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("All Appliances"),
              onTap: () {
                print('hi');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllAppliances(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Control"),
              onTap: () {
                print('hi');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Control(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Control2"),
              onTap: () {
                print('hi');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Control2(),
                  ),
                );
              },
            ),
             ListTile(
              title: Text("Timer"),
              onTap: () {
                print('hi');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Timer(),
                  ),
                );
              },
            ),
          ],),
    );
  }
}
