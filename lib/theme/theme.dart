import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFFF58B1C);
const accentColor = const Color(0xFF024C80);
const textcolor = const Color(0xFF4C4D4E);
const textcolor2 = const Color(0xFFffffff);

ThemeData appTheme() {
  return ThemeData(
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
              return accentColor;
          }
        ),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed))
                  return Color.fromARGB(255, 0, 113, 194);
                  return null; // Defer to the widget's default.
          }
        ),
      )
    ),
    primaryColor: primaryColor,
    accentColor: accentColor,
    backgroundColor: Color(0XFFDFDFDF),
    dividerColor: Color(0xFFF1F0F0),
    brightness: brightness,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontFamily: 'Campton',
        fontWeight: FontWeight.w800,
        fontSize: 26
      ),
      headline3: TextStyle(
        fontFamily: 'Campton',
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: textcolor
      ),
      headline4: TextStyle(
        fontFamily: 'Campton',
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: textcolor
      ),
      bodyText2: TextStyle(
        fontFamily: 'Campton',
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: textcolor2
      ),
      bodyText1: TextStyle(
        fontFamily: 'Campton',
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: textcolor
      ),
    )
  );
}