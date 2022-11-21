import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

TextStyle defaultTextStyle = GoogleFonts.robotoMono(
  color: Colors.white,
  fontSize: 14.0,
);

TextStyle appBarTextStyle = GoogleFonts.robotoMono(
  color: Colors.white,
  fontSize: 20.0,
  fontWeight: FontWeight.w500,
);

TextStyle headerText = GoogleFonts.robotoMono(
  color: const Color(0xFFC3C6E6),
  fontSize: 24.0,
);

TextStyle formFieldStyle = GoogleFonts.robotoMono(
  color: Colors.white,
  fontSize: 16.0,
  fontWeight: FontWeight.w400,
);

TextStyle buttonTextStyle = GoogleFonts.robotoMono(
  color: Colors.white,
  fontSize: 18.0,
);

abstract class AppTheme {
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.darkColor,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      titleTextStyle: appBarTextStyle,
      toolbarTextStyle: appBarTextStyle,
    ),
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      background: AppColors.darkColor,
      onBackground: AppColors.darkColor,
      error: AppColors.primaryColor,
      onError: AppColors.primaryColor,
      onPrimary: AppColors.darkColor,
      onSecondary: AppColors.secondColor,
      onSurface: AppColors.secondColor,
      primary: AppColors.primaryColor,
      secondary: AppColors.primaryColor,
      surface: AppColors.darkColor,
    ).copyWith(secondary: AppColors.secondColor),
  );
}
