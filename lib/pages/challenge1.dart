import 'package:flutter/material.dart';

class Challenge1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/house.png',
                    width: 221,
                    height: 51,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
