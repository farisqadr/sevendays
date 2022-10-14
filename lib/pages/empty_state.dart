import 'package:flutter/material.dart';
import 'package:sevendays/widget/theme.dart';

class EmptyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 80, left: 50, right: 50),
      child: Column(
        children: [
          Image.asset(
            'assets/order.png',
            width: 200,
          ),
          SizedBox(
            height: 75,
          ),
          Text(
            'Success Order',
            style: boldTextStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'We will delivery your package as soon as possible',
            style: lightTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 200,
            height: 40,
            decoration: BoxDecoration(
                color: pinkColor, borderRadius: BorderRadius.circular(17)),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Done',
                  style: buttonTextStyle,
                )),
          )
        ],
      ),
    ));
  }
}
