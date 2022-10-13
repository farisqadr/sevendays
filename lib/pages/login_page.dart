import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181A20),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(
            'assets/icon_euro.png',
            width: 50,
          ),
          const SizedBox(
            height: 50,
          ),
          Text('Welcome back, \nLet’s make money!',
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white)),
          const SizedBox(
            height: 50,
          ),
          TextFormField(
            style: GoogleFonts.openSans(color: Colors.white),
            decoration: InputDecoration(
                fillColor: Color(0xff262A34),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide.none),
                hintText: 'Email',
                hintStyle: GoogleFonts.openSans(color: Color(0xff6F7075))),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            style: GoogleFonts.openSans(color: Colors.white),
            obscureText: true,
            decoration: InputDecoration(
                fillColor: Color(0xff262A34),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide.none),
                hintText: 'Password',
                hintStyle: GoogleFonts.openSans(color: const Color(0xff6F7075)),
                suffixIcon: const Icon(
                  Icons.visibility,
                  color: Color(0xff6F7075),
                )),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            alignment: const Alignment(1, 0.5),
            child: Text(
              'Forgot My Password',
              style: GoogleFonts.openSans(color: const Color(0xff6F7075)),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Container(
            height: 55,
            width: 325,
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Color(0xffFCAC15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17))),
              onPressed: () {},
              child: Text('Sign In',
                  style: GoogleFonts.openSans(
                      color: Color(0xff6B4909),
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 60),
            child: Row(
              children: [
                Text(
                  'Don\'t have account? ',
                  style: GoogleFonts.poppins(
                      color: Color(0xffFFFFFF), fontWeight: FontWeight.w400),
                ),
                Text('Sign up!',
                    style: GoogleFonts.poppins(
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.underline,
                    )),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
