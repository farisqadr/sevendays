import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/widget/theme.dart';

class ChallengeSeven extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget gambar(String urlGambar) {
      return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Image.asset(
          urlGambar,
          width: 80,
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 290,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/cover.png'),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Arrina La',
            style: boldTextStyle,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Bali, Dekat Kuta',
            style: lightTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About',
                  style: lightTextStyle,
                  textAlign: TextAlign.left,
                ),
                Text(
                  'Pantai Pandawa adalah salah satu para kawasan wisata di area Kuta selatan sana Kabupaten Dekat Bandung, Bali.',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Booking Now',
                  style: lightTextStyle,
                  textAlign: TextAlign.left,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      gambar('assets/day_one.png'),
                      gambar('assets/day_two.png'),
                      gambar('assets/day_three.png'),
                      gambar('assets/day_four.png'),
                      gambar('assets/day_one.png'),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 700K',
                        style: priceTextStyle,
                      ),
                      Text(
                        'per malam',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    width: 220,
                    height: 50,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xff3F6DF6),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17))),
                      onPressed: () {},
                      child: Text(
                        'Continue',
                        style: buttonTextStyle,
                      ),
                    ),
                  ),
                  label: '')
            ]),
      ),
    );
  }
}
