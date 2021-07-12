import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_food/shared/theme.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
                vertical: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/icon/back.png",
                    width: 25,
                    height: 25,
                  ),
                  Text(
                    'Cart',
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Image.asset(
                    "assets/icon/dot.png",
                    width: 15,
                    height: 15,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                children: [
                  Image.asset(
                    "assets/img/hamburger.png",
                    width: 75,
                    height: 75,
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hamburger'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Best Food in 2021'),
                            Text('Best Food in 2021'),
                          ],
                        ),
                        Text('IDR 30000'),
                      ],
                    ),
                  ),
                  
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
