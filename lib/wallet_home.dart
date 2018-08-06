import 'package:demo/cash_page.dart';
import 'package:flutter/material.dart';
import 'package:demo/my_button.dart';

class WalletHomePage extends StatefulWidget {
  @override
  _WalletHomeState createState() => new _WalletHomeState();
}

class _WalletHomeState extends State<WalletHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
              // 头部
              margin: new EdgeInsets.fromLTRB(18.0, 30.0, 18.0, 18.0),
              height: 50.0,
              child: new Stack(
                children: <Widget>[
                  new Container(
                    alignment: Alignment.center,
                    child: new Text(
                      "资产",
                      style: new TextStyle(
                          fontSize: 18.0, color: Color(0xff606374)),
                    ),
                  ),
                  new InkWell(
                    onTap: () {
                      setState(() {
                        // 闪兑
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return CashPage();
                          },
                        ));
                      });
                    },
                    child: new Container(
                        alignment: Alignment.centerRight,
                        margin: new EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                        child: new Column(
                          children: <Widget>[
                            Image.asset(
                              'images/ic_cash.png',
                              width: 20.0,
                              height: 20.0,
                            ),
                            new Text(
                              "闪兑",
                              style: new TextStyle(
                                  fontSize: 10.0, color: Color(0xff606374)),
                            ),
                          ],
                        )),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
