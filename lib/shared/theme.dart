import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double defaultMargin = 24;

Color mainColor = Color(0xff11AC6A);
Color greyColor = Color(0xffA4A4A4);
Color lightGreyColor = Color(0xffF6F7FB);

TextStyle titleFontStyle = GoogleFonts.poppins().copyWith(
  color: Colors.black,
  fontSize: 14,
  fontWeight: FontWeight.w700,
);

TextStyle subtitleFontStyle = GoogleFonts.poppins().copyWith(
  color: greyColor,
  fontSize: 12,
  fontWeight: FontWeight.w600,
);

TextStyle priceFontStyle = GoogleFonts.poppins().copyWith(
  color: mainColor,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);