import 'package:flutter/material.dart';
import 'package:demo/my_button.dart';

class WalletHomePage extends StatefulWidget {
  @override
  _WalletHomeState createState() => new _WalletHomeState();
}

class _WalletHomeState extends State<WalletHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
        body: new Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: new Column(
        // Column is also layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Invoke "debug paint" (press "p" in the console where you ran
        // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
        // window in IntelliJ) to see the wireframe for each widget.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            '钱包首页',
          ),
        ],
      ),
    ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
