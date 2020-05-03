
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

      home: MyAppHome(),
    );
  }
}

/// Body
class MyAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppBodyState();
  }
}

class MyAppBodyState extends State<MyAppHome> {
  int _currentInt = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar 的标题"),
      ),
      body: Text("这是内容"),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 36,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        currentIndex: _currentInt,

        onTap: (int index){
          setState(() {
            _currentInt = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("主页")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("分类")
          )
        ],
      ),
    );
  }

}
