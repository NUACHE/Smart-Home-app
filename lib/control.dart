import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soho/widgets.dart';

class Control extends StatefulWidget {
  @override
  _ControlState createState() => _ControlState();
}

var val = 7.0;

class _ControlState extends State<Control> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 246, 255, 1),
      body: Column(
        children: [
          SizedBox(height: 40),
          Container(
            height: 400,
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
                      ),
                      child: Slider(
                        inactiveColor: Colors.blueGrey[100],
                        value: val,
                        min: 0,
                        max: 10,
                        onChanged: (newval) {
                          setState(() {
                            val = newval;
                          });
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
