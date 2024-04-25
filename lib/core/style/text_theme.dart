import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemeApps {
  static final textThemeDefault = ThemeData(
    textTheme: TextTheme(
      displayLarge: GoogleFonts.poppins(
              fontSize: 30, fontWeight: FontWeight.w500, letterSpacing: 1)
          .copyWith(color: Colors.white),
      labelLarge: GoogleFonts.poppins(
              fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 1)
          .copyWith(color: Colors.white),
      labelMedium: GoogleFonts.poppins(
              fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 1)
          .copyWith(color: Colors.white),
      labelSmall: GoogleFonts.poppins(
              fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 1)
          .copyWith(color: Colors.white),
    ),
  );
}
