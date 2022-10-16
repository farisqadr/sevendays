import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/widget/theme.dart';

class FeatureLight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Image.asset(
            'assets/crown.png',
            width: 100,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Which one you \nwish to Upgrade?',
            style: boldTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
        ],
      );
    }

    Widget option() {
      return Container(
        width: 300,
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            border: Border.all(color: Color(0xffD9DEEA))),
        child: Padding(
          padding: const EdgeInsets.only(left: 25, top: 15, bottom: 15),
          child: Row(
            children: [
              Image.asset(
                'assets/pig.png',
                width: 50,
              ),
              SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: Text('Money Security',
                        style: GoogleFonts.poppins(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                  Row(
                    children: [
                      Text(
                        'support ',
                        style: lightTextStyle,
                      ),
                      Text(
                        '24/7',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Color(0xff5343C2),
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(
        top: 30,
        left: 30,
      ),
      child: Column(
        children: [header(), option()],
      ),
    ));
  }
}
