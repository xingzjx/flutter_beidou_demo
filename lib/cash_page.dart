import 'package:flutter/material.dart';
import 'package:demo/my_button.dart';

class CashPage extends StatefulWidget {
  @override
  _CashPageState createState() => new _CashPageState();
}

class _CashPageState extends State<CashPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title:
              new Text("cash", style: new TextStyle(color: Color(0xff606374))),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                '闪兑',
              ),
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
