import 'package:calagem_app/pages/choice.method.quantidade.page.dart';
import 'package:calagem_app/widgets/berco.form.widget.dart';
import 'package:calagem_app/widgets/logo.widget.dart';
import 'package:calagem_app/widgets/sucess.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:calagem_app/pages/choice.method.necessidade.page.dart';
import 'package:google_fonts/google_fonts.dart';

class BercoPage extends StatefulWidget {
  @override
  _BercoPageState createState() => _BercoPageState();
}

class _BercoPageState extends State<BercoPage> {
  Color _color = Colors.brown;

  var _busy = false;

  var _completed = false;

  var _resultText = "Vou escrever algo aqui";

  var _ncCtrl = new MoneyMaskedTextController();

  var _pfCtrl = new MoneyMaskedTextController();

  var _lgCtrl = new MoneyMaskedTextController();

  var _compCtrl = new MoneyMaskedTextController();

  var _prntCtrl = new MoneyMaskedTextController();

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
          _completed
              ? Success(
                  result: _resultText,
                  reset: reset,
                )
              : SubmitFormBerco(
                  ncCtrl: _ncCtrl,
                  pfCtrl: _pfCtrl,
                  lgCtrl: _lgCtrl,
                  compCtrl: _compCtrl,
                  prntCtrl: _prntCtrl,
                  busy: _busy,
                  submitFunc: calculate,
                ),
          SizedBox(
            height: 5,
          ),
          Image.asset(
            'assets/images/caLogo.png',
            height: 30,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 30,
            margin: EdgeInsets.only(
              left: 60,
              right: 60,
            ),
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
                "Escolher outro método",
                style: GoogleFonts.merriweather(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 30,
            margin: EdgeInsets.only(
              left: 60,
              right: 60,
            ),
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
                "Passo 1 - Necessidade de Calagem",
                style: GoogleFonts.merriweather(fontSize: 10),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Future calculate() {
    double nc =
        double.parse(_ncCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double pf =
        double.parse(_pfCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double lg =
        double.parse(_lgCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double comp =
        double.parse(_compCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double prnt =
        double.parse(_prntCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;

    double volume = pf * lg * comp;
    double qc = (nc * volume) / 2000000000 * 1000000 * (100/prnt);

    setState(() {
      _color = Colors.deepPurpleAccent;
      _completed = false;
      _busy = true;
    });

    return new Future.delayed(
        const Duration(seconds: 3),
        () => {
              setState(() {
                String ress = qc.toStringAsFixed(2);
                if (ress != 'NaN'){
                  _resultText = "A necessidade de calagem é de " +
                    ress +
                    " toneladas/ha para a espessura de camada de solo informada";
                  _busy = false;
                  _completed = true;
                } else {
                  _resultText = "Algo deu errado, retorne ao cálculo e preencha todos os campos com um valor diferente de zero";
                  _busy = false;
                  _completed = true;
                }
              })
            });
  }

  reset() {
    setState(() {
      _color = Colors.deepPurple;
      _ncCtrl = new MoneyMaskedTextController();
      _pfCtrl = new MoneyMaskedTextController();
      _lgCtrl = new MoneyMaskedTextController();
      _compCtrl = new MoneyMaskedTextController();
      _prntCtrl = new MoneyMaskedTextController();
      _completed = false;
      _busy = false;
    });
  }
}