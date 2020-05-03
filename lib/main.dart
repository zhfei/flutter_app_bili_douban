
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bili_douban/components/tabbar_item.dart';
import 'package:flutter_app_bili_douban/views/group/group.dart';
import 'package:flutter_app_bili_douban/views/home/home.dart';
import 'package:flutter_app_bili_douban/views/mail/mail.dart';
import 'package:flutter_app_bili_douban/views/profile/profile.dart';
import 'package:flutter_app_bili_douban/views/subject/Subject.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "安卓多页面切换 title",
      theme: ThemeData(
        primaryColor: Colors.green,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent
      ),

      home: MyStackPage(),
    );
  }
}

/// Body
class MyStackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyStackPageState();
  }
}

class MyStackPageState extends State<MyStackPage> {
  int _currentInt = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
//        iconSize: 36,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        currentIndex: _currentInt,

        type: BottomNavigationBarType.fixed,
        onTap: (int index){
          setState(() {
            _currentInt = index;
          });
        },

        items: <BottomNavigationBarItem>[
          TabBarItem("home", "主页"),
          TabBarItem("subject","书影音"),
          TabBarItem("group", "小组"),
          TabBarItem("mail","集市"),
          TabBarItem("profile", "我的"),
        ],
      ),
      body: IndexedStack(
        index: _currentInt,
        children: <Widget>[
          Home(),
          Subject(),
          Group(),
          Mail(),
          Profile(),
        ],
      ),
    );
  }

}
