import 'package:flutter/material.dart';
import 'package:sevendays/widget/theme.dart';
import 'package:sevendays/pages/rating_screen.dart';

class ChallengeFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 40, right: 40),
        child: Column(
          children: [
            Image.asset(
              'assets/food_delivery.png',
              width: 200,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Enjoy Your Meal',
              style: boldTextStyle,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Please rate our experience',
              style: lightTextStyle,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/star_yellow.png',
                  width: 50,
                ),
                Image.asset('assets/star_yellow.png', width: 50),
                Image.asset('assets/star_yellow.png', width: 50),
                Image.asset('assets/star_gray.png', width: 50),
                Image.asset('assets/star_gray.png', width: 50),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                    maxLines: 3,
                    style: lightTextStyle,
                    decoration: InputDecoration(
                      fillColor: Color(0xffF0F0F0),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(17),
                          borderSide: BorderSide.none),
                      hintText: 'Your message',
                      hintStyle: lightTextStyle,
                    )),
                SizedBox(height: 20),
                Container(
                    height: 55,
                    width: 320,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xff5468FF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13))),
                        onPressed: () {
                          RatingScreen();
                        },
                        child: Text(
                          'Submit Review',
                          style: buttonTextStyle,
                        ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
