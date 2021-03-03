import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;

  Function function;
  var text = "";

  LoadingButton({
    @required this.busy,
    @required this.function,
    @required this.invert,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(10)),
      child: FlatButton(
        child: Text(
          "Calcular",
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 35,
              fontFamily: "Big Shouders Display"),
        ),
        onPressed: () {},
      ),
    );
  }
}
