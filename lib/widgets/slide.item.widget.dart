import 'package:flutter/material.dart';
import 'package:calagem_app/model/slide.dart';
import 'package:google_fonts/google_fonts.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Image.asset(
            slideList[index].imageUrl,
            height: 80,
          ),
        ),
        SizedBox(
          height: 20
          ),
        Container(
          child: Text(
            slideList[index].title,
            style: GoogleFonts.merriweather(fontSize: 15, color: Colors.white),
                textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 20),
        Text(
          slideList[index].description,
          style: GoogleFonts.merriweather(fontSize: 15),
                textAlign: TextAlign.center,
        ),
      ],
    );
  }
}