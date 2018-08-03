import 'package:flutter/material.dart';

class FindPwd extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
//      title: 'Flutter Demo',
//      theme: new ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
//        // counter didn't reset back to zero; the application is not restarted.
//        primarySwatch: Colors.red,
//      ),
      home: new FindPwdPage(),
      // home:TutorialHome(),
      // home: CounterDisplay(count:1),
      //home: MyListView(),
    );
  }
}

class FindPwdPage extends StatefulWidget {
  @override
  FindPwdPageState createState() => new FindPwdPageState();
}

class FindPwdPageState extends State<FindPwdPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          Container(
              // 头部
              margin: new EdgeInsets.fromLTRB(18.0, 30.0, 0.0, 18.0),
              height: 50.0,
              child: new Stack(
                children: <Widget>[
                  new Container(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      'images/ic_back.png',
                      width: 20.0,
                      height: 36.0,
                    ),
                  ),
                  new Container(
                    alignment: Alignment.center,
                    child: new Text(
                      "找回密码",
                      style: new TextStyle(
                          fontSize: 18.0, color: Color(0xff606374)),
                    ),
                  )
                ],
              )),
          new Container(
            alignment: Alignment.topLeft,
            margin: new EdgeInsets.fromLTRB(30.0, 50.0, 0.0, 0.0),
            child: new Text(
              "用户名",
              style: new TextStyle(fontSize: 12.0),
            ),
          ),
          new Padding(
              padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
              child: new TextField(
                keyboardType: TextInputType.phone,
                style: new TextStyle(fontSize: 16.0, color: Colors.black),
                decoration: new InputDecoration(
                  hintText: '用户名',
                  border: InputBorder.none,
                ),
              )),
          new Padding(
              padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
              child: new Divider(
                height: 0.1,
              )),
          new Container(
            alignment: Alignment.topLeft,
            margin: new EdgeInsets.fromLTRB(30.0, 15.0, 0.0, 0.0),
            child: new Text(
              "找回方式",
              style: new TextStyle(fontSize: 12.0),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
            child: new Row(
              children: <Widget>[
                new Text(
                  "+86",
                  style: new TextStyle(color: const Color(0xff2C2C2C)),
                ),
                new Image.asset(
                  'images/ic_down.png',
                  width: 13.0,
                  height: 8.0,
                ),
                new Container(
                  width: 100.0,
                  //height: 13.0,
                  child: new TextField(
                    keyboardType: TextInputType.phone,
                    style: new TextStyle(fontSize: 14.0, color: Colors.black),
                    decoration: new InputDecoration(
                      hintText: '手机号',
                      border: InputBorder.none,
                    ),
                  ),
                )
              ],
            ),
          ),
          new Padding(
              padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
              child: new Divider(
                height: 0.1,
              )),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
