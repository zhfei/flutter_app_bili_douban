
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bili_douban/network/HttpRequest.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    /// 在initState方法中发生网络请求
    HttpRequest.request("https://douban.uieee.com/v2/movie/top250?start=0&count=20").then((response) {

      final subjects = response.data["subjects"];

      print("res: ${subjects}");
      print("resType: ${subjects.runtimeType}");

    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("首页", style: TextStyle(fontSize: 30),),
    );
  }
}


