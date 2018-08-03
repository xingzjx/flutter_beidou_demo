import 'package:demo/register.dart';
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
  void _select() {
//    new PopupMenuButton(
//        itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
//              new PopupMenuItem<String>(value: '选项一的值', child: new Text('选项一')),
//              new PopupMenuItem<String>(value: '选项二的值', child: new Text('选项二'))
//            ]);

    new PopupMenuButton<String>(
        itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              new PopupMenuItem<String>(
                  value: "price", child: new Text('Sort by price')),
              new PopupMenuItem<String>(
                  value: "time", child: new Text('Sort by time')),
            ],
        onSelected: (String action) {
          switch (action) {
            case "price":
              // do nothing
              break;
            case "time":
              // do nothing
              break;
          }
        });
  }

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
            margin: new EdgeInsets.fromLTRB(30.0, 28.0, 0.0, 0.0),
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
                  hintText: '请输入用户名',
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
                  width: 200.0,
                  //height: 13.0,
                  child: new TextField(
                    keyboardType: TextInputType.phone,
                    style: new TextStyle(fontSize: 14.0, color: Colors.black),
                    decoration: new InputDecoration(
                      hintText: '手机号',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          new Padding(
              padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
              child: new Divider(
                height: 0.1,
              )),
          new Container(
            alignment: Alignment.topLeft,
            margin: new EdgeInsets.fromLTRB(30.0, 15.0, 0.0, 0.0),
            child: new Text(
              "验证码",
              style: new TextStyle(fontSize: 12.0),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
            child: new Stack(
              children: <Widget>[
                new Container(
                  margin: new EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 0.0),
                  child: new TextField(
                    keyboardType: TextInputType.number,
                    style: new TextStyle(fontSize: 14.0, color: Colors.black),
                    decoration: new InputDecoration(
                      hintText: '请输入验证码',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                new Align(
                  alignment: Alignment.centerRight,
                  child: new InkWell(
                    child: new Container(
                      child: new Text(
                        "发送",
                        style: new TextStyle(
                            fontSize: 14.0, color: const Color(0xff498FDD)),
                      ),
                      margin: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                    ),
                    onTap: () {
                      setState(() {});
                    },
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
          new Container(
            alignment: Alignment.topLeft,
            margin: new EdgeInsets.fromLTRB(30.0, 15.0, 0.0, 0.0),
            child: new Text(
              "用户名",
              style: new TextStyle(fontSize: 12.0),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
            child: new Stack(
              children: <Widget>[
                new Container(
                  margin: new EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 0.0),
                  child: new TextField(
                    keyboardType: TextInputType.number,
                    style: new TextStyle(fontSize: 14.0, color: Colors.black),
                    decoration: new InputDecoration(
                      hintText: '请输入验证码',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                new Align(
                  alignment: Alignment.centerRight,
                  child: new InkWell(
                    child: new Container(
                      child: new Text(
                        "发送",
                        style: new TextStyle(
                            fontSize: 14.0, color: const Color(0xff498FDD)),
                      ),
                      margin: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                    ),
                    onTap: () {
                      setState(() {
                        _select();
                      });
                    },
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
          new Container(
            alignment: Alignment.topLeft,
            margin: new EdgeInsets.fromLTRB(30.0, 15.0, 0.0, 0.0),
            child: new Text(
              "用户名",
              style: new TextStyle(fontSize: 12.0),
            ),
          ),
          new Container(
            margin: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
            child: new Stack(
              children: <Widget>[
                new Container(
                  margin: new EdgeInsets.fromLTRB(0.0, 0.0, 30.0, 0.0),
                  child: new TextField(
                    keyboardType: TextInputType.number,
                    style: new TextStyle(fontSize: 14.0, color: Colors.black),
                    decoration: new InputDecoration(
                      hintText: '请输入验证码',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                new Container(
                    margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                    child: new Align(
                      alignment: Alignment.centerRight,
                      child: new Image.asset(
                        'images/ic_pwd_show.png',
                        width: 40.0,
                        height: 24.0,
                      ),
                    )),
              ],
            ),
          ),
          new Padding(
              padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
              child: new Divider(
                height: 0.1,
              )),
          new InkWell(
            child: new Container(
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                color: const Color(0xff498fdd),
                borderRadius: new BorderRadius.all(new Radius.circular(3.0)),
              ),
              child: new Center(
                  child: new Text(
                "确认修改",
                style: new TextStyle(color: Colors.white, fontSize: 18.0),
              )),
              margin: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
              padding: const EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 7.0),
            ),
            onTap: () {
              setState(() {
                _select();
              });
            },
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
