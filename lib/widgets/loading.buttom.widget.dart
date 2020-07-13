import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingButtom extends StatelessWidget {
  var busy = false;
  var invert = false;
  Function func;
  var text = "";

  LoadingButtom({
    @required this.busy,
    @required this.func,
    @required this.invert,
    @required this.text,
  });
  
  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 40,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            margin: EdgeInsets.only(
              left: 40,
              right: 40,
            ),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: invert
                  ? Color(0xFF2b1d0e)
                  : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              onPressed: func,
              child:  Text(
                text,
                style: GoogleFonts.merriweather(
                  fontSize: 20, 
                  color: invert ? Colors.white : Color(0xFF2b1d0e), 
                  fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          );
  }
}