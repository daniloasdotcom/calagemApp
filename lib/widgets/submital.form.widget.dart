import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'input.widget.dart';
import 'loading.buttom.widget.dart';

class SubmitFormAl extends StatelessWidget {
  var caCtrl = new MoneyMaskedTextController();
  var mgCtrl = new MoneyMaskedTextController();
  var potCtrl = new MoneyMaskedTextController();
  var naCtrl = new MoneyMaskedTextController();
  var alCtrl = new MoneyMaskedTextController();
  var mtCtrl = new MoneyMaskedTextController();
  var chisCtrl = new MoneyMaskedTextController();
  var argCtrl = new MoneyMaskedTextController();
  var premCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitFormAl({
    @required this.caCtrl,
    @required this.mgCtrl,
    @required this.potCtrl,
    @required this.naCtrl,
    @required this.alCtrl,
    @required this.mtCtrl,
    @required this.chisCtrl,
    @required this.argCtrl,
    @required this.premCtrl,
    @required this.busy,
    @required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 60,
            right: 60,
          ),
          child: Input(
            label: 'Ca (cmolc/dm³)',
            ctrl: caCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 60,
            right: 60,
          ),
          child: Input(
            label: 'Mg (cmolc/dm³)',
            ctrl: mgCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 60,
            right: 60,
          ),
          child: Input(
            label: 'K (mg/dm³)',
            ctrl: potCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 60,
            right: 60,
          ),
          child: Input(
            label: 'Na (mg/dm³)',
            ctrl: naCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 60,
            right: 60,
          ),
          child: Input(
            label: 'Al (cmolc/dm³)',
            ctrl: alCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 60,
            right: 60,
          ),
          child: Input(
            label: 'mt (%)',
            ctrl: mtCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 60,
            right: 60,
          ),
          child: Input(
            label: 'x (cmolc/dm³)',
            ctrl: chisCtrl,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Preencha APENAS UM dos campos abaixo",
          style: GoogleFonts.merriweather(fontSize: 12, color: Colors.white,),
          textAlign: TextAlign.center,
          
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 60,
            right: 60,
          ),
          child: Input(
            label: 'Argila (%)',
            ctrl: argCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 60,
            right: 60,
          ),
          child: Input(
            label: 'P-rem (mg/dm³)',
            ctrl: premCtrl,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        LoadingButtom(
          busy: busy,
          func: submitFunc,
          invert: false,
          text: "Calcular",
        ),
      ],
    );
  }
}

class LoadingButton {}