import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          'assets/images/CalagemApp.png',
          height: 60,
        ),
        Text(
          "Calagem App",
          style: GoogleFonts.merriweather(fontSize: 12, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}