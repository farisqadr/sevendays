import 'package:flutter/material.dart';
import 'package:sevendays/widget/theme.dart';

class Challenge4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B1B33),
      body: Column(
        children: [
          Image.asset(
            'assets/profit.png',
            fit: BoxFit.fitWidth,
          ),
          Text(
            'Boost Profit!',
            style: titleTextStyle,
          ),
          Text(
            'Our tools are helping business\nto grow much faster',
            style: descTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/btn_rocket.png',
            width: 50,
          )
        ],
      ),
    );
  }
}
