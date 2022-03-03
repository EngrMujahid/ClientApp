// ignore_for_file: prefer_const_constructors, unnecessary_new, unnecessary_const, prefer_const_literals_to_create_immutables

import 'package:client_app/screen/loginscreen/login_screen.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  _HomeHeaderState createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 414.0,

      // boxdecoration for header

      decoration: BoxDecoration(
        color: Color(0xffF7FFFB),
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
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ///header section
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/drawer.png'),
                  ),
                  Image(image: AssetImage('assets/images/lg.png')),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/bell.png'),
                  ),
                ],
              ),
            ),

            // search section
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 251,

                      // boxdecoration for field

                      decoration: BoxDecoration(
                        color: Color(0xffF7FFFB),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 1,
                            color: Color(0xffE5E5E5),
                            offset: Offset(1, 1),
                            blurRadius: 2,
                          )
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "I am looking for",
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Color(0xff333D41),
                            fontFamily: 'Roboto',
                            fontSize: 18,
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.search,
                              color: Color(0xff00A859),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 100,
                      child: IconButton(
                          icon: Image.asset(
                            'assets/images/filter.png',
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
