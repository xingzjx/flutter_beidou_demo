import 'package:demo/counter_display.dart';
import 'package:demo/home_page.dart';
import 'package:demo/listview.dart';
import 'package:demo/tutorial_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Register extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        body: Center(
          // child: TapboxA(),
          child: RegisterView(),
        ),
      ),
      // home:TutorialHome(),
      // home: CounterDisplay(count:1),
      //home: MyListView(),
    );
  }
}

class RegisterView extends StatefulWidget {
  @override
  State createState() => new _RegisterState();
}

class _RegisterState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Scaffold(
        body: new Stack(
      children: <Widget>[
        Image.asset(
          'images/ic_register_header.png',
          width: MediaQuery.of(context).size.width,
        ),
        new Center(
            child: new Container(
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.all(new Radius.circular(6.0)),
          ),
          width: MediaQuery.of(context).size.width * 289/375,
          height: MediaQuery.of(context).size.height * 454 / 667,
          child: new Column(
            children: <Widget>[
              new Padding(
                  padding: new EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
                  child: new TextField(
                    keyboardType: TextInputType.phone,
                    style: new TextStyle(fontSize: 14.0, color: Colors.black),
                    decoration: new InputDecoration(
                      hintText: '用户名',
                      border: InputBorder.none,
                      icon: new Image.asset(
                        'images/ic_login_name.png',
                        width: 14.0,
                        height: 16.0,
                      ),
                    ),
                  )),
              new Padding(
                  padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                  child: new Divider(
                    height: 0.1,
                  )),
              new Padding(
                  padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                  child: new TextField(
                    keyboardType: TextInputType.text,
                    style: new TextStyle(fontSize: 14.0),
                    decoration: new InputDecoration(
                      hintText: '登入密码',
                      border: InputBorder.none,
                      icon: new Image.asset(
                        'images/ic_login_pwd.png',
                        width: 14.0,
                        height: 16.0,
                      ),
                    ),
                  )),
              new Padding(
                  padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                  child: new Divider(
                    height: 1.0,
                  )),
              new Padding(
                  padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                  child: new TextField(
                    keyboardType: TextInputType.phone,
                    style: new TextStyle(fontSize: 14.0),
                    decoration: new InputDecoration(
                      hintText: '确认密码',
                      border: InputBorder.none,
                      icon: new Image.asset(
                        'images/ic_login_pwd.png',
                        width: 16.0,
                        height: 16.0,
                      ),
                    ),
                  )),
              new Padding(
                  padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                  child: new Divider(
                    height: 1.0,
                  )),
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
                        style: new TextStyle(fontSize: 14.0),
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
                    height: 1.0,
                  )),
              new Padding(
                  padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                  child: new TextField(
                    keyboardType: TextInputType.phone,
                    style: new TextStyle(fontSize: 14.0),
                    decoration: new InputDecoration(
                      hintText: '校验码',
                      border: InputBorder.none,
                      icon: new Image.asset(
                        'images/ic_register_verify.png',
                        width: 16.0,
                        height: 16.0,
                      ),
                    ),
                  )),
              new Padding(
                  padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                  child: new Divider(
                    height: 1.0,
                  )),
              new Padding(
                  padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                  child: new TextField(
                    keyboardType: TextInputType.phone,
                    style: new TextStyle(fontSize: 14.0),
                    decoration: new InputDecoration(
                      hintText: '邮箱',
                      border: InputBorder.none,
                      icon: new Image.asset(
                        'images/ic_register_email.png',
                        width: 16.0,
                        height: 16.0,
                      ),
                    ),
                  )),
              new Padding(
                  padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                  child: new Divider(
                    height: 1.0,
                  )),
              new Padding(
                  padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                  child: new TextField(
                    keyboardType: TextInputType.phone,
                    style: new TextStyle(fontSize: 14.0),
                    decoration: new InputDecoration(
                      hintText: '邀请码',
                      border: InputBorder.none,
                      icon: new Image.asset(
                        'images/ic_register_invite_code.png',
                        width: 16.0,
                        height: 16.0,
                      ),
                    ),
                  )),
              new Padding(
                  padding: new EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                  child: new Divider(
                    height: 1.0,
                  )),
              new InkWell(
                child: new Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                    color: const Color(0xff498fdd),
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(18.0)),
                  ),
                  child: new Center(
                      child: new Text(
                    "注册",
                    style: new TextStyle(color: Colors.white, fontSize: 18.0),
                  )),
                  margin: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
                  padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                ),
                onTap: () {
                  setState(() {});
                },
              ),
              new InkWell(
                child: new Container(
                  child: new Text(
                    "注册即表示同意MSC用户协议",
                    style: new TextStyle(
                        fontSize: 11.0, color: const Color(0xff0e0e0e)),
                  ),
                  margin: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                ),
                onTap: () {
                  setState(() {});
                },
              ),
            ],
          ),
        )),
        new Align(
          alignment: Alignment.bottomCenter,
          child: new Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 49.0),
              child: new InkWell(
                child: new Container(
                  child: new Text(
                    "已有账号？直接登录",
                    style: new TextStyle(
                        fontSize: 12.0, color: const Color(0xff72768a)),
                  ),
                ),
                onTap: () {
                  setState(() {
                    Navigator.pop(context);
                    SystemNavigator.pop();
                  });
                },
              )),
        ),
      ],
    ));
  }
}
