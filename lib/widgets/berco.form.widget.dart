import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:calagem_app/widgets/input.widget.dart';
import 'package:calagem_app/widgets/loading.buttom.widget.dart';

class SubmitFormBerco extends StatelessWidget {
  var ncCtrl = new MoneyMaskedTextController();
  var pfCtrl = new MoneyMaskedTextController();
  var lgCtrl = new MoneyMaskedTextController();
  var compCtrl = new MoneyMaskedTextController();
  var prntCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitFormBerco({
    @required this.ncCtrl,
    @required this.pfCtrl,
    @required this.lgCtrl,
    @required this.compCtrl,
    @required this.prntCtrl,
    @required this.busy,
    @required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: 'NC (t/ha)',
            ctrl: ncCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: 'Prof. da cova (cm)',
            ctrl: pfCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: 'Larg. da cova (cm)',
            ctrl: lgCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: 'Comp. da cova (cm)',
            ctrl: compCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            label: 'PRNT do calcário (%)',
            ctrl: prntCtrl,
          ),
        ),
        SizedBox(
          height: 10,
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