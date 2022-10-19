import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChallengeTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 60),
          child: Text(
            'Health First',
            style:
                GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 60),
          child: Text(
            'Exercise together with our best community fit in the world',
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Color(0xff828284)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 145, left: 60),
          child: Image.asset(
            'assets/gridsome.png',
            width: 250,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 490, left: 60),
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
              minimumSize: Size(250, 36),
              backgroundColor: Color(0xffAFEA0D),
            ),
            onPressed: () {},
            child: Text("Shape My Body",
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w500)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 550, left: 120),
          child: Text(
            'Term & Condition',
            style: GoogleFonts.poppins(
                decoration: TextDecoration.underline,
                fontSize: 16,
                fontWeight: FontWeight.w300,
                color: Color(0xff757575)),
          ),
        )
      ],
    ));
  }
}
