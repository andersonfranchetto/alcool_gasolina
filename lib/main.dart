import 'package:alcool_gasolina/widgets/input.widget.dart';
import 'package:alcool_gasolina/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Álcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasCtrl = MoneyMaskedTextController();
  var _alclCtrl = MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: ListView(
          children: <Widget>[
            Logo(),
            Container(
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Text("Compensa utilizar álcool"),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.all(30),
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10)),
                    child: FlatButton(
                      child: Text(
                        "Calcular Novamente",
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 35,
                            fontFamily: "Big Shouders Display"),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Input(label: "Gasolina", ctrl: _gasCtrl),
            Input(label: "Álcool", ctrl: _alclCtrl),
            Container(
              margin: EdgeInsets.all(30),
              height: 60,
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
            ),
          ],
        ));
  }
}
