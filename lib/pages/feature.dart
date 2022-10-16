import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/widget/theme.dart';

class FeatureLight extends StatefulWidget {
  @override
  State<FeatureLight> createState() => _FeatureLightState();
}

class _FeatureLightState extends State<FeatureLight> {
  int selectedIndex = -1;
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

    Widget option(
      int index,
      String imageUrl,
      String title,
      String description,
      String subdescription,
    ) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          width: 300,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              border: Border.all(
                  color: selectedIndex == index
                      ? Color(0xff6050E7)
                      : Color(0xffD9DEEA))),
          child: Padding(
            padding: const EdgeInsets.only(left: 25, top: 15, bottom: 15),
            child: Row(
              children: [
                Image.asset(
                  imageUrl,
                  width: 50,
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text(title,
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ),
                    Row(
                      children: [
                        Text(
                          description,
                          style: lightTextStyle,
                        ),
                        Text(
                          subdescription,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Color(0xff5343C2),
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                selectedIndex == index
                    ? Image.asset(
                        'assets/icon_check_purple.png',
                        width: 25,
                      )
                    : SizedBox()
              ],
            ),
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
        children: [
          header(),
          option(0, 'assets/pig.png', 'Money Security', 'support ', '24/7'),
          SizedBox(
            height: 14,
          ),
          option(1, 'assets/small_doc.png', 'Automation', 'we provide ',
              'invoice'),
          SizedBox(
            height: 14,
          ),
          option(
              2, 'assets/dollar.png', 'Business Report', 'can up to ', '10K'),
        ],
      ),
    ));
  }
}
