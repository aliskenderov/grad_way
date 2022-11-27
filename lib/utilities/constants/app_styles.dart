import 'package:flutter/material.dart';

class AppColors {
  static Color colorText = Color.fromARGB(255, 64, 94, 115);
  static Color color = Color(0xff79869F);
  static Color blackColor = Color(0xff212121);
  static Color whiteColor = Color(0xffFFFFFF);
  static Color blueColor = Color(0xff009EE0);
}

class TextStyles {
  static TextStyle styleForHeadings = TextStyle(
      color: AppColors.color, fontSize: 26, fontWeight: FontWeight.bold);

  static TextStyle styleForSubtitle = TextStyle(
    color: AppColors.whiteColor,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  static TextStyle fontSize = TextStyle(
    fontSize: 16,
  );
}
