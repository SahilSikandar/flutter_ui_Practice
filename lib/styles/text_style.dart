import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Styles {
  static TextStyle get h1 => GoogleFonts.notoSerif(
        fontSize: 36,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get subh1 =>
      GoogleFonts.notoSerif(fontSize: 12, color: Colors.grey[400]);
  static TextStyle get h2 =>
      GoogleFonts.notoSerif(fontSize: 18, color: Colors.grey[400]);
  static TextStyle get h4 => GoogleFonts.notoSerif(
      fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold);
  static TextStyle get h3 =>
      GoogleFonts.notoSerif(fontSize: 18, color: Colors.white);
  static TextStyle get buttonText => GoogleFonts.notoSerif(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);
}
