import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soho/widgets.dart';

class Control2 extends StatefulWidget {
  @override
  _Control2State createState() => _Control2State();
}

//Values for sliders must be different
var val = 7.0;
var first = 0.0;
var second = 0.1;
var fourth = 5.0;
var third = 4.0;
var fifth = 6.5;

class _Control2State extends State<Control2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 246, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bedroom',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Philips Smart Light',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.show_chart,
                            color: Colors.greenAccent,
                            size: 35,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              '232',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'Volts',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: SliderTheme(
                        data: SliderThemeData(
                          thumbColor: Colors.white,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.5),
                          trackHeight: 30.0,
                          activeTrackColor: Colors.greenAccent,
                        ),
                        child: Slider(
                          inactiveColor: Colors.blueGrey[100],
                          value: val,
                          min: 0,
                          max: 10,
                          onChanged: (newval) {
                            setState(
                              () {
                                val = newval;
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Bright'),
                        Text('Dim'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5.0, left: 30.0),
                  child: Container(
                    height: 80,
                    width: 90,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.white,
                      elevation: 3,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 17,
                          ),
                          Center(
                            child: SvgPicture.asset(
                              'images/leaf.svg',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Power Saving \nmode',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Container(
                    height: 80,
                    width: 90,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.white,
                      elevation: 3,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                              child: Icon(
                            Icons.power_settings_new,
                            color: Colors.red,
                            size: 35,
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5.0, left: 30.0),
                  child: Text("Select Hue", style: TextStyle(fontSize: 20),)
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmallSliders(
                  val: first,
                  runFunc: (newval) {
                    setState(
                      () {
                        first = newval;
                      },
                    );
                  },
                  color: Colors.yellow,
                ),
                SmallSliders(
                  val: second,
                  runFunc: (newval) {
                    setState(
                      () {
                        second = newval;
                      },
                    );
                  },
                  color: Colors.orange,
                ),
                SmallSliders(
                  val: third,
                  runFunc: (newval) {
                    setState(
                      () {
                        third = newval;
                      },
                    );
                  },
                  color: Colors.red,
                ),
                SmallSliders(
                  val: fourth,
                  runFunc: (newval) {
                    setState(
                      () {
                        fourth = newval;
                      },
                    );
                  },
                  color: Colors.indigo,
                ),
                SmallSliders(
                  val: fifth,
                  runFunc: (newval) {
                    setState(
                      () {
                        fifth = newval;
                      },
                    );
                  },
                  color: Colors.green,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
