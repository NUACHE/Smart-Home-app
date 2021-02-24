import 'package:flutter/material.dart';

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
                Container(
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
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
                          padding: const EdgeInsets.all(30.0),
                          child: Text(
                            'All lights will switch off automatically as per the timer which is there in the setting',
                            style: TextStyle(color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
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
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    elevation: 10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Icon(Icons.lightbulb),
                      ],
                    ),
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
