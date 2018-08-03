import 'package:demo/find_pwd.dart';
import 'package:demo/main.dart';
import 'package:demo/register.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<Widget> titleContent = [];
    titleContent.add(new Text(
      "登入",
      style: new TextStyle(color: Colors.white),
    ));

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
      //home:MyHomePage(title: 'Flutter Demo Home Page'),
      // home:TutorialHome(),
      // home: CounterDisplay(count:1),
      home: Scaffold(
        body: Center(
          // child: TapboxA(),
          child: Login(),
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  @override
  State createState() => new _SignInState();
}

class _SignInState extends State<Login> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      new GlobalKey<ScaffoldState>();
  final TextEditingController _phoneController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  bool _correctPhone = true;
  bool _correctPassword = true;

  void _login() {
    // 登入
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return Main();
      },
    ));
  }

  void _register() {
    // 注册
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return Register();
      },
    ));
  }

  void _findPwd() {
    // 注册
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return FindPwd();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _scaffoldKey,
        body: new Stack(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'images/ic_login_bg.png',
              width: MediaQuery.of(context).size.width,
            ),
            new Center(
              child: new Container(
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        new BorderRadius.all(new Radius.circular(6.0)),
                  ),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: new Padding(
                      padding: new EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                      child: new Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Padding(
                                padding: new EdgeInsets.fromLTRB(
                                    0.0, 20.0, 0.0, 20.0),
                                child: new Text("")),
                            Image.asset(
                              'images/ic_login_head.png',
                              width: 73.00,
                              height: 73.00,
                            ),
                            new Padding(
                                padding: new EdgeInsets.fromLTRB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: new TextField(
                                  controller: _phoneController,
                                  keyboardType: TextInputType.phone,
                                  decoration: new InputDecoration(
                                    hintText: '手机号码',
                                    border: InputBorder.none,
                                    errorText: _correctPhone
                                        ? null
                                        : '号码的长度应该在7到12位之间',
                                    icon: new Image.asset(
                                      'images/ic_login_name.png',
                                      width: 16.0,
                                      height: 16.0,
                                    ),
                                  ),
                                )),
                            new Divider(
                              height: 1.0,
                            ),
                            new Padding(
                                padding:
                                    new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                                child: new TextField(
                                  controller: _passwordController,
                                  obscureText: true,
                                  keyboardType: TextInputType.number,
                                  decoration: new InputDecoration(
                                    hintText: '登陆密码',
                                    border: InputBorder.none,
                                    errorText:
                                        _correctPassword ? null : '密码的长度应该大于6位',
                                    icon: new Image.asset(
                                      'images/ic_login_pwd.png',
                                      width: 16.0,
                                      height: 16.0,
                                    ),
                                  ),
                                )),
                            new Divider(
                              height: 1.0,
                            ),
                            new InkWell(
                              child: new Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: new BoxDecoration(
                                  color: const Color(0xff498fdd),
                                  borderRadius: new BorderRadius.all(
                                      new Radius.circular(18.0)),
                                ),
                                child: new Center(
                                    child: new Text(
                                  "登录",
                                  style: new TextStyle(
                                      color: Colors.white, fontSize: 18.0),
                                )),
                                margin: const EdgeInsets.fromLTRB(
                                    0.0, 35.0, 0.0, 13.0),
                                padding: const EdgeInsets.fromLTRB(
                                    0.0, 5.0, 0.0, 5.0),
                              ),
                              onTap: () {
                                setState(() {
                                  _login();
                                });
                              },
                            ),
                            new Row(
                              children: <Widget>[
                                new InkWell(
                                  child: new Container(
                                    child: new Text("立即注册"),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      _register();
                                    });
                                  },
                                ),
                                new InkWell(
                                  child: new Container(
                                    child: new Text("找回密码"),
                                    margin: const EdgeInsets.fromLTRB(
                                        130.0, 0.0, 0.0, 0.0),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      _findPwd();
                                    });
                                  },
                                ),
                              ],
                            ),
                          ]))),
            )
          ],
        ));
  }
}
