import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:soho/usage.dart';
import 'package:soho/widgets.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 246, 255, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Good Evening!',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      Text(
                        '6:30 PM',
                        style: TextStyle(color: Colors.blue, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 3.0, bottom: 3.0, left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nuache',
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: LargeCard(
                      widget: [
                        SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          title: Text('Evening Mode ON'),
                          subtitle: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '6',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 35),
                                  ),
                                  Text(
                                    '4',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 35),
                                  ),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 35),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Garden lights'),
                                  Text('Cordial lights'),
                                  Text('Hall lights'),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '03:30:33',
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                  Text(
                                    '03:30:33',
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                  Text(
                                    '02:30:33',
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Text(
                            'All lights will switch off automatically as per the timer which is there in the setting',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Running Appliances',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(color: Colors.blue, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: SmallCard(
                          widget: SvgPicture.asset(
                            'images/aircon.svg',
                          ),
                          name: "Air Conditioner",
                          details: "On for last 3 Hrs",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: SmallCard(
                          widget: SvgPicture.asset(
                            'images/bulb.svg',
                          ),
                          name: "Lights",
                          details: "On for last 5 Hrs",
                        ),
                      ),
                      SmallCard(
                        widget: SvgPicture.asset(
                          'images/fridge.svg',
                        ),
                        name: "Fridge",
                        details: "On for last 2 Hrs",
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: LargeCard(
                    widget: [
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        leading: SvgPicture.asset(
                          'images/meter.svg',
                        ),
                        title: Text('January 19 Bill'),
                        subtitle: RichText(
                          text: TextSpan(
                            text: "Due Date ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' 6 Days',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        trailing: RichText(
                          text: TextSpan(
                            text: "467\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Units',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w200),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: ListTile(
                            leading: Icon(Icons.post_add_sharp,
                                color: Colors.blue[400]),
                            title: Text(
                              'Drill Amount',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            trailing: Text('\$ 4,654.72')),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: ListTile(
                          title: Text(
                            'View Breakdown',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.blue[700],
                            ),
                          ),
                          trailing: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Usage(),
                                ),
                              );
                            },
                            child: Text(
                              'Pay Bill',
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
