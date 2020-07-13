
import 'package:calagem_app/pages/choice.method.necessidade.page.dart';
import 'package:calagem_app/pages/choice.method.quantidade.page.dart';
import 'package:calagem_app/pages/home.page.dart';
import 'package:calagem_app/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoiceStep extends StatelessWidget {
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
                  return ChoiceMethodNecessidade();
                }));
              },
              child: Text(
                "Passo 01 - Necessidade de Calagem",
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
                  return ChoiceMethodQuantidade();
                }));
              },
              child: Text(
                "Passo 02 - Quantidade de Calagem",
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
        ],
      ),
    );
  }
}