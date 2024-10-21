import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static bool isDark = true;
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xffB7935F),
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
      primary: const Color(0xffB7935F),
      seedColor: const Color(0xffB7935F),
      onSecondary: Colors.black,
      onPrimary: const Color(0xffB7935F),
    ),
    appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xffB7935F),
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 32,
      ),
      selectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 28,
      ),
      unselectedItemColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
    ),
    dividerColor: const Color(0xffB7935f),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: const Color(0xff141a2e),
    colorScheme: ColorScheme.fromSeed(
      primary: const Color(0xff141a2e),
      seedColor: const Color(0xff141a2e),
      onSecondary: const Color(0xfffacc1d),
      onPrimary: const Color(0xfffacc1d),
      surface: const Color(0xff141a2e),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      backgroundColor: Colors.transparent,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      centerTitle: true,
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff141a2e),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        size: 32,
        color: Color(0xfffacc1d),
      ),
      selectedItemColor: Color(0xfffacc1d),
      unselectedIconTheme: IconThemeData(
        size: 26,
        color: Colors.white,
      ),
      unselectedItemColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: const Color(0xff141a2e).withOpacity(0.9),
    ),
    dividerColor: const Color(0xfffacc1d),
  );
}
