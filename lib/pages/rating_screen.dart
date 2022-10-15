import 'package:flutter/material.dart';
import 'package:sevendays/widget/theme.dart';

class RatingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181925),
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Image.asset(
              'assets/pizza.png',
              width: 160,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Pizza Goreng Kai',
              style: titleTextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '\$90,00',
              style: priceTextStyle,
            ),
            SizedBox(
              height: 100,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Was it delicious?',
                  style: descTextStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/emoji1.png',
                      width: 50,
                    ),
                    Image.asset('assets/emoji2.png', width: 50),
                    Image.asset('assets/emoji3.png', width: 50),
                    Image.asset('assets/emoji1.png', width: 50)
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xff34D186),
                  borderRadius: BorderRadius.circular(60)),
              child: Align(
                  child: Text(
                'Rate Now!',
                style: buttonTextStyle,
              )),
            )
          ],
        ),
      ),
    );
  }
}
