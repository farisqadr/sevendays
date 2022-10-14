import 'package:flutter/material.dart';
import 'package:sevendays/pages/rating_screen.dart';

void main() => runApp(SevenDays());

class SevenDays extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: RatingScreen());
  }
}
