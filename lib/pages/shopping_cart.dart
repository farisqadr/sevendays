import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sevendays/widget/cart_list.dart';
import 'package:sevendays/widget/theme.dart';

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
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
              descMakanan: 'Roti gendut',
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
              namaMakanan: 'Mojito Orange',
              descMakanan: 'Cai orson',
              hargaMakanan: '\$140.00',
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffEEF0F0),
                  borderRadius: BorderRadius.circular(17)),
              width: 300,
              height: 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 5),
                    child: Text('Informations',
                        style: GoogleFonts.poppins(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sub total', style: lightTextStyle),
                            Text('Delivery', style: lightTextStyle),
                            Text('Total', style: lightTextStyle),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('\$600.00', style: lightTextStyle),
                            Text('\$80.00', style: lightTextStyle),
                            Text('\$680.00', style: lightTextStyle),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 50,
              child: TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      backgroundColor: Color(0xffFFC532)),
                  onPressed: () {},
                  child: Text(
                    'Checkout Now',
                    style: GoogleFonts.poppins(
                        color: Color(0xff2E221B),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 50,
              child: TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      backgroundColor: Color.fromARGB(255, 196, 196, 196)),
                  onPressed: () {},
                  child: Text(
                    'Save to Wishlist',
                    style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 255, 254, 254),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
