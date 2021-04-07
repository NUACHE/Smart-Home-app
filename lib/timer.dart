import 'package:flutter/material.dart';

import 'package:flutter_circular_slider/flutter_circular_slider.dart';
import 'package:soho/widgets.dart';

class Timer extends StatefulWidget {
  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 246, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Garden Lights Timer',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: RichText(
                text: TextSpan(
                  text: '4 CFL, 8LED, 2 Focus Lamps ',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w300),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Edit',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Center(
              child: Container(
                child: DoubleCircularSlider(
                  100, //divisions
                  50, //init
                  75, //end
                  height: 300,
                  width: 300,
                  baseColor: Colors.blueGrey[100],
                  selectionColor: Colors.blue,

                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, bottom: 12, left: 15, right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('12:00'),
                        SizedBox(height: 40),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 20.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                      color: Colors.grey), // for right side
                                ),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    '06:00',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text('On Time')
                                ],
                              ),
                            ),
                            VerticalDivider(),
                            Column(
                              children: [
                                Text(
                                  '09:00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text('Off Time')
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('09:00'),
                            Text('03:00'),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          '03:00',
                          style: TextStyle(
                              fontSize: 26.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Hours',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text('06:00'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Repeat',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: LittleCards(
                      text: 'Daily',
                      color: Colors.blue,
                      textcolor: Colors.white,
                    ),
                  ),
                  LittleCards(text: 'Sun'),
                  LittleCards(text: 'Mon'),
                  LittleCards(text: 'Tue'),
                  LittleCards(text: 'Thu'),
                  LittleCards(text: 'Fri'),
                  LittleCards(text: 'Sat'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width / 1.2,
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.blue,
                ),
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
