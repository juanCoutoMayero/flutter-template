import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AppColors.dart';
import 'AppDimens.dart';

class AppTextStyles {
  static TextStyle title = TextStyle(
    color: AppColors.black,
    height: AppDimens.titleSize,
  );

  static TextStyle appBarTitle = GoogleFonts.padauk(
    textStyle: TextStyle(
      fontSize: AppDimens.appBar,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
  );

  static TextStyle primaryTitle = GoogleFonts.padauk(
    textStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
  );

  static TextStyle normalText = GoogleFonts.merienda(
    textStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w300,
      color: AppColors.orangeAccent,
    ),
  );

  static TextStyle secondText = GoogleFonts.merienda(
    textStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w300,
      color: Colors.grey,
    ),
  );

  static TextStyle primaryText = GoogleFonts.padauk(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: Colors.black,
    ),
  );

  static TextStyle primaryTextGray = GoogleFonts.poppins(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: AppColors.gray,
    ),
  );

  static TextStyle primaryTextBold = GoogleFonts.poppins(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: Colors.black,
    ),
  );

  static TextStyle primaryTextUnderLine = GoogleFonts.poppins(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: Colors.black,
      decoration: TextDecoration.underline,
    ),
  );
}
