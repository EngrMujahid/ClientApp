// ignore_for_file: prefer_const_constructors

import 'package:flutter/widgets.dart';

class SliderBox extends StatelessWidget {
  const SliderBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 180.0,
        width: 370.0,

        // boxdecoration for header

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // ignore: prefer_const_literals_to_create_immutables
            colors: [
              Color(0xff00B548),
              Color(0xff47E285),
            ],
          ),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            BoxShadow(
              spreadRadius: 1,
              color: Color(0xffFFFFFF),
              offset: Offset(1, 1),
              blurRadius: 2,
            )
          ],
        ),
        child: Row(
          children: [
            // picture section
            Expanded(
              child: Image(
                image: AssetImage('assets/images/sh.png'),
              ),
            ),

            // Text section
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 19.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Stay at home \nEssentials',
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 18.0,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'All suppiles you need for a cleaner \nand more productive home \nquarantine life.',
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 12.0,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
