import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return ThemeData(
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      primaryColor: Color.fromRGBO(9, 9, 26, 1.0),
      accentColor: Colors.amber,
      cardColor: Color.fromRGBO(9, 9, 26, 1.0),
      canvasColor: Color.fromRGBO(9, 9, 26, 1.0),
      textTheme: GoogleFonts.robotoMonoTextTheme(textTheme).copyWith(
        headline1: GoogleFonts.robotoMono(
          textStyle: TextStyle(
            color: Colors.amber,
          ),
        ),
        headline2: GoogleFonts.robotoMono(
          textStyle: TextStyle(
            color: Colors.amber,
          ),
        ),
        headline3: GoogleFonts.robotoMono(
          textStyle: TextStyle(
            color: Colors.amber,
          ),
        ),
        headline4: GoogleFonts.robotoMono(
          textStyle: TextStyle(
            color: Colors.amber,
          ),
        ),
        headline5: GoogleFonts.robotoMono(
          textStyle: TextStyle(
            color: Colors.amber,
          ),
        ),
        headline6: GoogleFonts.robotoMono(
          textStyle: TextStyle(
            color: Colors.amber,
          ),
        ),
        subtitle1: GoogleFonts.robotoMono(
          textStyle: TextStyle(
            color: Colors.amber,
          ),
        ),
        subtitle2: GoogleFonts.robotoMono(
          textStyle: TextStyle(
            color: Colors.amber,
          ),
        ),
        bodyText1: GoogleFonts.robotoMono(
          textStyle: TextStyle(
            color: Colors.amber,
          ),
        ),

        /// Body Style
        bodyText2: GoogleFonts.robotoMono(
          textStyle: TextStyle(
            color: Colors.amber,
          ),
        ),

        caption: GoogleFonts.robotoMono(
          textStyle: TextStyle(
            color: Colors.amber,
          ),
        ),
        button: GoogleFonts.robotoMono(
          textStyle: TextStyle(
            color: Colors.amber,
          ),
        ),
        overline: GoogleFonts.robotoMono(
          textStyle: TextStyle(
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
