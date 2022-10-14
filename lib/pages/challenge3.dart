import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 50, right: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/paper_pic.png',
                width: 200,
              ),
            ),
            Text(
              'Email Address',
              style: GoogleFonts.openSans(fontSize: 14),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                height: 40,
                child: TextFormField(
                  style: GoogleFonts.openSans(fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                      fillColor: Color(0xffF3F3F3),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(71),
                          borderSide: BorderSide.none)),
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              'Password',
              style: GoogleFonts.openSans(fontSize: 14),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                height: 40,
                child: TextFormField(
                  obscureText: true,
                  style: GoogleFonts.openSans(fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                      fillColor: Color(0xffF3F3F3),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(71),
                          borderSide: BorderSide.none)),
                )),
            const SizedBox(
              height: 5,
            ),
            Container(
              alignment: const Alignment(1, 0.5),
              child: Text(
                'Forgot Password?',
                style: GoogleFonts.openSans(
                    color: const Color(0xff6F7075), fontSize: 12),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                height: 40,
                width: 320,
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Color(0xff5468FF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60))),
                    onPressed: () {},
                    child: Text(
                      'Log In',
                      style: GoogleFonts.openSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF)),
                    ))),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 40,
                width: 320,
                child: TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                            side: BorderSide(color: Color(0xFFD3D3D3)))),
                    onPressed: () {},
                    child: Text(
                      'Create New Account',
                      style: GoogleFonts.openSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFCFCFCF)),
                    )))
          ],
        ),
      ),
    );
  }
}
