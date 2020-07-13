
import 'package:calagem_app/pages/choice.step.page.dart';
import 'package:calagem_app/pages/home.page.dart';
import 'package:calagem_app/pages/sb.page.dart';
import 'package:calagem_app/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:calagem_app/pages/al.page.dart';
import 'package:google_fonts/google_fonts.dart';

class InBuild extends StatelessWidget {
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
            height: 30,
          ),
          Text(
            "Fórmulas em Construção",
            style: GoogleFonts.merriweather(fontSize: 15, color: Colors.white,),
            textAlign: TextAlign.center,
          ),
          Text(
            "Em breve liberaremos as atualizações",
            style: GoogleFonts.merriweather(fontSize: 15, color: Colors.white,),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          Image.asset(
            'assets/images/caLogo.png',
            height: 70,
          ),
          SizedBox(
            height: 50,
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