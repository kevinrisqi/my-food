import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_food/shared/theme.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int qty = 1;
  bool isChecked = true;

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
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    child: Icon(Icons.check),
                  ),
                  Image.asset(
                    "assets/img/hamburger.png",
                    width: 60,
                    height: 60,
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hamburger',
                          style: titleFontStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Best Food in 2021',
                              style: subtitleFontStyle,
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      qty--;
                                    });
                                  },
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    padding: EdgeInsets.all(7),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/icon/minus.png')),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12),
                                Text(
                                  qty.toString(),
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(width: 12),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      qty++;
                                    });
                                  },
                                  child: Container(
                                    width: 25,
                                    height: 25,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: mainColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/icon/add.png')),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'IDR 30000',
                          style: priceFontStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
