import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:calagem_app/widgets/input.widget.dart';
import 'package:calagem_app/widgets/loading.buttom.widget.dart';

class SubmitFormSb extends StatelessWidget {
  var caCtrl = new MoneyMaskedTextController();
  var mgCtrl = new MoneyMaskedTextController();
  var kCtrl = new MoneyMaskedTextController();
  var naCtrl = new MoneyMaskedTextController();
  var halCtrl = new MoneyMaskedTextController();
  var v2Ctrl = new MoneyMaskedTextController();
  var camCtrl = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitFormSb({
    @required this.caCtrl,
    @required this.mgCtrl,
    @required this.kCtrl,
    @required this.naCtrl,
    @required this.v2Ctrl,
    @required this.halCtrl,
    @required this.camCtrl,
    @required this.busy,
    @required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
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
            ctrl: kCtrl,
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
            label: 'H + Al (cmolc/dm³)',
            ctrl: halCtrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 60,
            right: 60,
          ),
          child: Input(
            label: 'V' + '\u2082' + ' (%)',
            ctrl: v2Ctrl,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 60,
            right: 60,
          ),
          child: Input(
            label: 'Camada (cm)',
            ctrl: camCtrl,
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