import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Stack(
        children: [
          Container(
              child: Padding(
            padding: const EdgeInsets.only(top: 190, left: 40),
            child: Text(
              'Welcome back, \nLet’s make money!',
              style: GoogleFonts.poppins(fontSize: 18, color: Colors.white),
            ),
          ))
        ],
      ),
    );
  }
}
