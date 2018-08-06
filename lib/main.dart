import 'package:demo/home_page.dart';
import 'package:demo/wallet_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MainPageState();
}

class MainPageState extends State<MainPage> {
  // This widget is the root of your application.
  int _tabIndex = 0;
  final tabTextStyleNormal = new TextStyle(color: const Color(0xffBBC3D5));
  final tabTextStyleSelected = new TextStyle(color: const Color(0xff498FDD));

  var tabImages;
  var _body;
  var appBarTitles = ['钱包', '商城', '交易', '快讯', '我的'];

  Image getTabImage(path) {
    return new Image.asset(path, width: 27.0, height: 20.0);
  }

  void initData() {
    if (tabImages == null) {
      tabImages = [
        [
          getTabImage('images/home_wallet_hollow.png'),
          getTabImage('images/home_wallet_solid.png')
        ],
        [
          getTabImage('images/home_store_hollow.png'),
          getTabImage('images/home_store_solid.png')
        ],
        [
          getTabImage('images/home_transfer_hollow.png'),
          getTabImage('images/home_transfer_solid.png')
        ],
        [
          getTabImage('images/home_msg_hollow.png'),
          getTabImage('images/home_msg_solid.png')
        ],
        [
          getTabImage('images/home_me_hollow.png'),
          getTabImage('images/home_me_solid.png')
        ]
      ];
    }
    _body = new IndexedStack(
      children: <Widget>[
        new WalletHomePage(),
        new MyHomePage(),
        new MyHomePage(),
        new MyHomePage(),
        new MyHomePage(),
      ],
      index: _tabIndex,
    );
  }

  TextStyle getTabTextStyle(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabTextStyleSelected;
    }
    return tabTextStyleNormal;
  }

  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }

  Text getTabTitle(int curIndex) {
    return new Text(appBarTitles[curIndex], style: getTabTextStyle(curIndex));
  }

  @override
  Widget build(BuildContext context) {
    initData();
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
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
//          appBar: new AppBar(
//              backgroundColor: Colors.white,
//              centerTitle: true,
//              title: new Text(appBarTitles[_tabIndex],
//                  style: new TextStyle(
//                      fontSize: 18.00, color: const Color(0xff606374))),
//              iconTheme: new IconThemeData(color: Colors.white)),
          body: _body,
          bottomNavigationBar: new CupertinoTabBar(
            items: <BottomNavigationBarItem>[
              new BottomNavigationBarItem(
                  icon: getTabIcon(0), title: getTabTitle(0)),
              new BottomNavigationBarItem(
                  icon: getTabIcon(1), title: getTabTitle(1)),
              new BottomNavigationBarItem(
                  icon: getTabIcon(2), title: getTabTitle(2)),
              new BottomNavigationBarItem(
                  icon: getTabIcon(3), title: getTabTitle(3)),
              new BottomNavigationBarItem(
                  icon: getTabIcon(4), title: getTabTitle(4)),
            ],
            currentIndex: _tabIndex,
            onTap: (index) {
              setState(() {
                _tabIndex = index;
              });
            },
          )),
      // home:TutorialHome(),
      // home: CounterDisplay(count:1),
      //home: MyListView(),
    );
  }
}
