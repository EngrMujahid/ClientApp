// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:client_app/constant/color.dart';
import 'package:client_app/customwidget/homewidget/card_list.dart';
import 'package:client_app/customwidget/homewidget/home_header.dart';
import 'package:client_app/customwidget/homewidget/horizontal_field.dart';
import 'package:client_app/customwidget/homewidget/slider_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffE5E5E5),
        body: ListView(
          children: [
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                HomeHeader(),
                SizedBox(height: 15),
                SliderBox(),
                SizedBox(height: 12),
                HorizontalField(text: 'Services'),
                SizedBox(height: 12),
                CardList(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
