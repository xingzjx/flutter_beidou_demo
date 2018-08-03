import 'package:demo/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(Test());
}

class Test extends StatelessWidget {
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
      home:Text("aaa"),
      // home:TutorialHome(),
      // home: CounterDisplay(count:1),
      //home: MyListView(),
    );
  }
}