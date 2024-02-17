import 'package:coduapp/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget isFalse(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Ilova bu o'lchamga moslanmagan.",
          style: GoogleFonts.aBeeZee(
            color: blackColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }