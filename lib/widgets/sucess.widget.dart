import 'package:flutter/material.dart';
import 'package:calagem_app/widgets/loading.buttom.widget.dart';

class Success extends StatelessWidget {
  var result = "";
  Function reset;

  Success({
    @required this.result,
    @required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text(
              result,
              style: TextStyle(
                color: Color(0xFF2b1d0e),
                fontSize: 25,
                fontFamily: "Bell MT",
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          LoadingButtom(
            busy: false,
            func: reset,
            invert: true,
            text: "Novo Cálculo",
          ),
        ],
      ),
    );
  }
}
