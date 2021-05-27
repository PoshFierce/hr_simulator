import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

EdgeInsetsGeometry screenPadding1 =
    const EdgeInsets.symmetric(vertical: 100, horizontal: 50);

EdgeInsetsGeometry screenPadding2 =
    const EdgeInsets.symmetric(vertical: 70, horizontal: 30);

EdgeInsetsGeometry screenPadding3 =
    const EdgeInsets.symmetric(vertical: 50, horizontal: 10);

Color backColor = const Color(0xFF7E675E);
Color frontColor = const Color(0xFFDDA288);
Color decreaseColor = const Color(0xFFCE5A57);
Color cardColor = const Color(0xFF444C5C);

TextStyle helpStyle = GoogleFonts.comfortaa(
  fontSize: 16,
  fontWeight: FontWeight.normal,
  letterSpacing: 1,
  color: frontColor,
);

TextStyle normalStyle = GoogleFonts.comfortaa(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  letterSpacing: 1,
  color: frontColor,
);

TextStyle cardStyle = GoogleFonts.comfortaa(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  letterSpacing: 1,
  color: frontColor,
);

TextStyle titleStyle = GoogleFonts.comfortaa(
  fontSize: 25,
  fontWeight: FontWeight.bold,
  letterSpacing: 1,
  color: frontColor,
);

BoxDecoration outlineButtonBoxDecoration = BoxDecoration(
  borderRadius: const BorderRadius.all(Radius.circular(5.0)),
  border: Border.all(
    color: frontColor,
    width: 2.0,
    style: BorderStyle.solid,
  ),
);
