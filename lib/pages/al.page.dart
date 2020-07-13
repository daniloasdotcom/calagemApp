import 'package:calagem_app/pages/choice.method.quantidade.page.dart';
import 'package:calagem_app/widgets/logo.widget.dart';
import 'package:calagem_app/widgets/submital.form.widget.dart';
import 'package:calagem_app/widgets/sucess.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:calagem_app/pages/choice.method.necessidade.page.dart';
import 'package:google_fonts/google_fonts.dart';

class AlPage extends StatefulWidget {
  @override
  _AlPageState createState() => _AlPageState();
}

class _AlPageState extends State<AlPage> {
  Color _color = Colors.brown;

  var _busy = false;

  var _completed = false;

  var _resultText = "Vou escrever algo aqui";

  var _caCtrl = new MoneyMaskedTextController();
  var _mgCtrl = new MoneyMaskedTextController();
  var _potCtrl = new MoneyMaskedTextController();
  var _naCtrl = new MoneyMaskedTextController();
  var _alCtrl = new MoneyMaskedTextController();
  var _mtCtrl = new MoneyMaskedTextController();
  var _chisCtrl = new MoneyMaskedTextController();
  var _argCtrl = new MoneyMaskedTextController();
  var _premCtrl = new MoneyMaskedTextController();

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
              : SubmitFormAl(
                  caCtrl: _caCtrl,
                  mgCtrl: _mgCtrl,
                  potCtrl: _potCtrl,
                  naCtrl: _naCtrl,
                  alCtrl: _alCtrl,
                  mtCtrl: _mtCtrl,
                  chisCtrl: _chisCtrl,
                  argCtrl: _argCtrl,
                  premCtrl: _premCtrl,
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
                  return ChoiceMethodNecessidade();
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
                  return ChoiceMethodQuantidade();
                }));
              },
              child: Text(
                "Passo 2 - Quantidade de Calcário",
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
    double ca =
        double.parse(_caCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double mg =
        double.parse(_mgCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double k =
        double.parse(_potCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double na =
        double.parse(_naCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double al =
        double.parse(_alCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double mt =
        double.parse(_mtCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double x =
        double.parse(_chisCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double arg =
        double.parse(_argCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    double prem =
        double.parse(_premCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;
    
    setState(() {
      _color = Colors.deepPurpleAccent;
      _completed = false;
      _busy = true;
    });

    return new Future.delayed(
        const Duration(seconds: 3),
        () => {
              setState(() {            
                if  (prem != 0.0){
                  double y = 4.002 - (0.125901 * prem) + (0.001205 * (prem * prem)) - (0.00000362 * (prem * prem * prem));
                  double t = ca + mg + (k/390) + (na/230) + al;
                  double parte01 = y * (al - (mt * t/100));
                  double parte02 = x - (ca + mg);
                  if (parte01 <= 0 && 0 < parte02){
                    double resultado = parte02;
                    String ress = resultado.toStringAsFixed(2);
                    _resultText = "A necessidade de calagem é de " +
                      ress +
                      " toneladas/ha para a espessura de camada de solo informada";
                    _busy = false;
                    _completed = true;
                  } else if (parte02 <= 0 && 0 < parte01){
                    double resultado = parte01;
                    String ress = resultado.toStringAsFixed(2);
                    _resultText = "A necessidade de calagem é de " +
                      ress +
                      " toneladas/ha para a espessura de camada de solo informada";
                    _busy = false;
                    _completed = true;
                  } else if (parte01 <= 0 && parte02 <= 0){
                    double resultado = 0;
                    String ress = resultado.toStringAsFixed(2);
                    _resultText = "A necessidade de calagem é de " +
                      ress +
                      " toneladas/ha para a espessura de camada de solo informada";
                    _busy = false;
                    _completed = true;
                  } else {
                    double resultado = parte01 + parte02;
                    String ress = resultado.toStringAsFixed(2);
                    _resultText = "A necessidade de calagem é de " +
                      ress +
                      " toneladas/ha para a espessura de camada de solo informada";
                    _busy = false;
                    _completed = true;
                  }
                } else if (arg != 0.0){
                  double y = 0.0302 + (0.06532 * arg) - (0.000257 * (arg * arg));
                  double t = ca + mg + (k / 390) + (na / 230) + al;
                  double parte01 = y * (al - (mt * t / 100));
                  double parte02 = x - (ca + mg);
                  if (parte01 <= 0 && 0< parte02){
                    double resultado = parte02;
                    String ress = resultado.toStringAsFixed(2);
                    _resultText = "A necessidade de calagem é de " +
                      ress +
                      " toneladas/ha para a espessura de camada de solo informada";
                    _busy = false;
                    _completed = true;
                  } else if (parte02 <= 0 && 0 <= parte01){
                    double resultado = parte01;
                    String ress = resultado.toStringAsFixed(2);
                    _resultText = "A necessidade de calagem é de " +
                      ress +
                      " toneladas/ha para a espessura de camada de solo informada";
                    _busy = false;
                    _completed = true;
                  } else if (parte01 <= 0 &&  parte02 <= 0){
                    double resultado = 0;
                    String ress = resultado.toStringAsFixed(2);
                    _resultText = "A necessidade de calagem é de " +
                      ress +
                      " toneladas/ha para a espessura de camada de solo informada";
                    _busy = false;
                    _completed = true;
                  } else {
                    double resultado =  parte01 + parte02;
                    String ress = resultado.toStringAsFixed(2);
                    _resultText = "A necessidade de calagem é de " +
                      ress +
                      " toneladas/ha para a espessura de camada de solo informada";
                    _busy = false;
                    _completed = true;
                  }
                }   
              })
            });
  }

  reset() {
    setState(() {
      _color = Colors.deepPurple;
      _caCtrl = new MoneyMaskedTextController();
      _mgCtrl = new MoneyMaskedTextController();
      _potCtrl = new MoneyMaskedTextController();
      _naCtrl = new MoneyMaskedTextController();
      _alCtrl = new MoneyMaskedTextController();
      _mtCtrl = new MoneyMaskedTextController();
      _chisCtrl = new MoneyMaskedTextController();
      _argCtrl = new MoneyMaskedTextController();
      _premCtrl = new MoneyMaskedTextController();

      _completed = false;
      _busy = false;
    });
  }
}