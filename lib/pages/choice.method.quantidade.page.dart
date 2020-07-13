
import 'package:calagem_app/pages/berco.page.dart';
import 'package:calagem_app/pages/choice.step.page.dart';
import 'package:calagem_app/pages/in.build.page.dart';
import 'package:calagem_app/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoiceMethodQuantidade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF2b1d0e),
      ),
      backgroundColor: Color(0xFF2b1d0e),
      body: ListView(
        children: <Widget>[
          Logo(),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BercoPage();
                }));
              },
              child: Text(
                "Por cova",
                style: GoogleFonts.merriweather(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InBuild();
                }));
              },
              child: Text(
                "Por Planta",
                style: GoogleFonts.merriweather(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InBuild();
                }));
              },
              child: Text(
                "Em Sulco",
                style: GoogleFonts.merriweather(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InBuild();
                }));
              },
              child: Text(
                "Em Área Total",
                style: GoogleFonts.merriweather(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Image.asset(
            'assets/images/caLogo.png',
            height: 70,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ChoiceStep();
                }));
              },
              icon: Icon(Icons.home),
              iconSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}