import 'dart:math' as math show  sqrt;

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:soho/widgets.dart';

class AddAppliances extends StatefulWidget {
  AddAppliances({
    Key key,
    this.size = 80.0,
    this.color = Colors.lightBlue,
    this.onPressed,
    this.child,
  }) : super(key: key);

  final double size;
  final Color color;
  final Widget child;
  final VoidCallback onPressed;

  @override
  _AddAppliancesState createState() => _AddAppliancesState();
}

class _CirclePainter extends CustomPainter {
  _CirclePainter(
    this._animation, {
    @required this.color,
  }) : super(repaint: _animation);

  final Color color;
  final Animation<double> _animation;

  void circle(Canvas canvas, Rect rect, double value) {
    final double opacity = (1.0 - (value / 4.0)).clamp(0.0, 1.0);
    final Color _color = color.withOpacity(opacity);
    //original value is (area*value/2), i edited to 1
    final double size = rect.width / 1;
    final double area = size * size;
    //original value is (area*value/4), i edited to 1
    final double radius = math.sqrt(area * value / 1);

    final Paint paint = Paint()..color = _color;
    canvas.drawCircle(rect.bottomCenter, radius, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromLTRB(0.0, 0.0, size.width, size.height);

    for (int wave = 3; wave >= 0; wave--) {
      circle(canvas, rect, wave + _animation.value);
    }
  }

  @override
  bool shouldRepaint(_CirclePainter oldDelegate) => true;
}

class _AddAppliancesState extends State<AddAppliances>
    with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(235, 246, 255, 1),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 40,
              ),
              SafeArea(
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Add New Appliance',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Your connected devices will come',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Finding Near by Appliances...',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomPaint(
              painter: _CirclePainter(
                _controller,
                color: Colors.lightBlue[200],
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.7,
                height: MediaQuery.of(context).size.width / 1.7,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Icon(Icons.circle, color: Colors.blue[700]),
          ),
          Positioned(
            left: 120,
            bottom: 170,
            child: NewDevice(
              widget: SvgPicture.asset(
                'images/bulb.svg',
              ),
              text: 'Smart Light',
            ),
          ),
          Positioned(
            bottom: 300,
            child: NewDevice(
              widget: SvgPicture.asset(
                'images/CFL.svg',
              ),
              text: '40W CFL',
            ),
          ),
          Positioned(
            bottom: 23,
            child: NewDevice(
                widget: SvgPicture.asset(
                  'images/aircon.svg',
                ),
                text: 'Air Conditioner'),
          ),
        ],
      ),
    );
  }
}
