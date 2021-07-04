import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_food/shared/theme.dart';

class FoodDetails extends StatefulWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  int qty = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        width: 25,
                        height: 25,
                        margin: EdgeInsets.symmetric(
                            horizontal: defaultMargin, vertical: defaultMargin),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/icon/back.png')))),
                  ),
                  Container(
                      width: 15,
                      height: 15,
                      margin: EdgeInsets.symmetric(
                          horizontal: defaultMargin, vertical: defaultMargin),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/icon/dot.png'))))
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Steak House',
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Our very own! Smashed \nbeef burgers',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: greyColor),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                height: 200,
                margin: EdgeInsets.symmetric(
                    horizontal: defaultMargin, vertical: 50),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/img/hamburger_detail.png')),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Size :',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                              color: mainColor, shape: BoxShape.circle),
                          child: Text(
                            'S',
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                              color: mainColor, shape: BoxShape.circle),
                          child: Text(
                            'M',
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                              color: mainColor, shape: BoxShape.circle),
                          child: Text(
                            'L',
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Quantity',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w500)),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              qty--;
                            });
                          },
                          child: Container(
                            width: 35,
                            height: 35,
                            padding: EdgeInsets.all(7),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/icon/minus.png')),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Text(
                          qty.toString(),
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 16),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              qty++;
                            });
                          },
                          child: Container(
                            width: 35,
                            height: 35,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: mainColor,
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/icon/add.png')),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 60,
                margin: EdgeInsets.symmetric(
                    horizontal: defaultMargin, vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Price',
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: greyColor)),
                        Text('IDR 49.000',
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w600))
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/icon/favorite.png')))),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.all(14),
                          decoration: BoxDecoration(
                            color: mainColor,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/icon/cart_white.png')))),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
