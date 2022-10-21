import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/widget/theme.dart';

class ChallengeSix extends StatelessWidget {
  const ChallengeSix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Image.asset(
              'assets/feature.png',
              width: 150,
            ),
            Text(
              'Pro Features',
              style: titleTextStyle,
            ),
            Text(
              'Unlock the winner modules\nand get more insights',
              style: priceTextStyle,
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget body() {
      return Padding(
        padding: const EdgeInsets.only(top: 30, left: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/icon_check.png',
                  width: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Unlock Our Top Charts',
                  style: whiteBodyStyle,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icon_check.png',
                  width: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Save More than 1,000 Docs', style: whiteBodyStyle)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icon_check.png',
                  width: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('24/7 Customer Support', style: whiteBodyStyle)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icon_check.png',
                  width: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Track Company’s Spending', style: whiteBodyStyle)
              ],
            ),
          ],
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xff0B073E), Color(0xff602880)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            header(),
            body(),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 100,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xffE57C73),
                    shadowColor: Color(0xffE57C73),
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 70, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subscribe Now',
                          style: buttonTextStyle,
                        ),
                        Image.asset('assets/btn_arrow.png')
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Text('Contact Support',
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    decoration: TextDecoration.underline))
          ],
        ),
      ),
    );
  }
}
