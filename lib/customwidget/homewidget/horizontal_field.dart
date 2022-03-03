// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class HorizontalField extends StatelessWidget {
  final String text;

  const HorizontalField({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            text,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xff333D41),
            ),
          ),
          SizedBox(width: 190),
          Text(
            'See All',
            style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontSize: 14,
              color: Color(0xff00A859),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios_outlined,
                  color: Color(0xff00A859))),
        ],
      ),
    );
  }
}
