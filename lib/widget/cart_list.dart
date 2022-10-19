import 'package:flutter/material.dart';
import 'package:sevendays/widget/theme.dart';

class CartList extends StatelessWidget {
  String gambarMakanan;
  String iconMinus;
  String jumlahMakanan;
  String iconPlus;
  String namaMakanan;
  String descMakanan;
  String hargaMakanan;

  CartList(
      {required this.gambarMakanan,
      required this.iconMinus,
      required this.jumlahMakanan,
      required this.iconPlus,
      required this.namaMakanan,
      required this.descMakanan,
      required this.hargaMakanan});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 150,
      decoration: BoxDecoration(
          color: Color(0xffEEF0F0), borderRadius: BorderRadius.circular(17)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Column(
              children: [
                Image.asset(
                  gambarMakanan,
                  width: 70,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset(
                      iconMinus,
                      width: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(jumlahMakanan),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      iconPlus,
                      width: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                namaMakanan,
                style: lightTextStyle,
              ),
              Text(
                descMakanan,
                style: messageTextStyle,
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 120, right: 20),
                child: Text(
                  hargaMakanan,
                  style: lightTextStyle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
