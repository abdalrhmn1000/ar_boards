import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData getThemeData(BuildContext context) {
  return ThemeData(
    primaryColor: const Color(0xff1A9040),
    cardColor: Colors.white,
    backgroundColor: const Color(0xffF6F6F6),
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0.0,
        titleTextStyle: TextStyle(
            color: const Color(0xff1A9040),
            fontWeight: FontWeight.w600,
            fontSize: 16,
            fontFamily: GoogleFonts.poppins().fontFamily)),
    colorScheme: Theme.of(context).colorScheme.copyWith(
          onSecondary: const Color(0xffD1E0DE),
          onSecondaryContainer:  Colors.black,
          primary: const Color(0xff1A9040),
          secondary: const Color(0xff1A9040),
        ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.black,
      selectionColor: Color(0xffD1E0DE),
      selectionHandleColor: Color(0xff1A9040),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // focusColor:  Colors.white,
      // filled: true,
      labelStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontFamily: GoogleFonts.poppins().fontFamily),
      hintStyle: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w500,
          fontSize: 16,
          fontFamily: GoogleFonts.poppins().fontFamily),
      floatingLabelStyle: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: GoogleFonts.poppins().fontFamily),
      focusedBorder:  UnderlineInputBorder(borderRadius: BorderRadius.circular(10),
        borderSide:const BorderSide(
          color: Color(0xff1A9040),
        ),
      ),
      enabledBorder:  UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        borderSide:const BorderSide(
          color:  Color(0xffF5F5F5),
        ),
      ),
      errorBorder:UnderlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ) ,
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ) ,
      contentPadding: const EdgeInsets.all(14),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(const Color(0xff1A9040)),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
        elevation: MaterialStateProperty.all(0),
      ),
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 24,
          fontFamily: GoogleFonts.poppins().fontFamily),
      headline2: TextStyle(
          color: const Color(0xff696969),
          fontWeight: FontWeight.w600,
          fontSize: 20,
          fontFamily: GoogleFonts.poppins().fontFamily),
      headline3: TextStyle(
          color: const Color(0xff909090),
          fontWeight: FontWeight.w500,
          fontSize: 16,
          fontFamily: GoogleFonts.poppins().fontFamily),
      headline4: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          fontFamily: GoogleFonts.poppins().fontFamily),
      headline5: TextStyle(
          color: const Color(0xff2C2626),
          fontWeight: FontWeight.w400,
          fontSize: 14,
          fontFamily: GoogleFonts.poppins().fontFamily),
      headline6:  TextStyle(
          color: const Color(0xff2C2626),
          fontWeight: FontWeight.w600,
          fontSize: 16,
          fontFamily: GoogleFonts.poppins().fontFamily),
    ),
  );
}
