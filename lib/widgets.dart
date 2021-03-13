import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:ui';

class SmallCard extends StatelessWidget {
  final Widget widget;
  final String name;
  final String details;
  final Color coloring;
  final Color powerColor;

  const SmallCard(
      {Key key,
      this.widget,
      this.name,
      this.details,
      this.coloring,
      this.powerColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width * 0.4,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.white,
        elevation: 3,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  widget,
                  Icon(
                    Icons.circle,
                    color: coloring ?? Colors.green,
                    size: 10,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 2.0, bottom: 2.0, left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    details,
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    icon: Icon(Icons.power_settings_new,
                        color: powerColor ?? Colors.red),
                    onPressed: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LargeCard extends StatelessWidget {
  final List<Widget> widget;

  const LargeCard({Key key, this.widget}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.white,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: widget,
        ),
      ),
    );
  }
}

class ClockView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 150,
      child: CustomPaint(
        painter: ClockPainter(),
      ),
    );
  }
}

class ClockPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //Using as reference
    var centerX = (size.width / 2) - 150;
    var centerY = (size.height / 4) - 4;
    var center = Offset(centerX, centerY + 30);
    //var radius = min(centerX, centerY);
    // var fillBrush = Paint()..color = Colors.blue;

    var centerFillBrush = Paint()..color = Colors.blue;

    //I will maintain secondHandBrush and change only the colors because i want to use equal width and stuff for all lines
    var secondHandBrush = Paint()
      ..color = Colors.lightBlue[100]
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;

    // canvas.drawCircle(center, radius - 40, fillBrush);

    //I used first one as reference so from now, i'll just be doing addition and subtraction to change positions
    canvas.drawLine(center, Offset(0, 30), secondHandBrush);
    canvas.drawCircle(center, 5, centerFillBrush);

    //I start calculations from below
    //BallPin 2
    canvas.drawLine(Offset(centerX + 60, centerY + 55), Offset(60, 30),
        secondHandBrush..color = Colors.cyan[100]);
    canvas.drawCircle(
      Offset(centerX + 60, centerY + 55),
      5,
      (centerFillBrush..color = Colors.cyan),
    );

    //BallPin 3
    canvas.drawLine(Offset(centerX + 120, centerY + 35), Offset(120, 30),
        secondHandBrush..color = Colors.teal[100]);
    canvas.drawCircle(
      Offset(centerX + 120, centerY + 35),
      5,
      (centerFillBrush..color = Colors.teal),
    );

    //BallPin 4
    canvas.drawLine(Offset(centerX + 180, centerY + 80), Offset(180, 30),
        secondHandBrush..color = Colors.blue[100]);
    canvas.drawCircle(
      Offset(centerX + 180, centerY + 80),
      5,
      (centerFillBrush..color = Colors.blue),
    );

    //BallPin 5
    canvas.drawLine(Offset(centerX + 240, centerY + 65), Offset(240, 30),
        secondHandBrush..color = Colors.green[100]);
    canvas.drawCircle(
      Offset(centerX + 240, centerY + 65),
      5,
      (centerFillBrush..color = Colors.green),
    );

    //BallPin 6
    canvas.drawLine(Offset(centerX + 300, centerY + 35), Offset(300, 30),
        secondHandBrush..color = Colors.lime[100]);
    canvas.drawCircle(
      Offset(centerX + 300, centerY + 35),
      5,
      (centerFillBrush..color = Colors.lime[800]),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
