import 'package:flutter/material.dart';
import 'package:sevendays/widget/cart_list.dart';
import 'package:sevendays/widget/theme.dart';

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Center(
              child: Text(
                'My Shopping Cart',
                style: boldTextStyle,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CartList(
              gambarMakanan: 'assets/burger.png',
              iconMinus: 'assets/min_icon.png',
              jumlahMakanan: '2',
              iconPlus: 'assets/plus_icon.png',
              namaMakanan: 'Burger Malleta',
              descMakanan: 'McTheone',
              hargaMakanan: '\$90.00',
            ),
            SizedBox(
              height: 10,
            ),
            CartList(
              gambarMakanan: 'assets/mojito.png',
              iconMinus: 'assets/min_icon.png',
              jumlahMakanan: '3',
              iconPlus: 'assets/plus_icon.png',
              namaMakanan: 'Mojito',
              descMakanan: 'The Bar',
              hargaMakanan: '\$140.00',
            ),
          ],
        ),
      ),
    );
  }
}
