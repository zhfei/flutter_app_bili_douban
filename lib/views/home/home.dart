
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_bili_douban/modles/home_modle.dart';
import 'package:flutter_app_bili_douban/network/HttpRequest.dart';
import 'package:flutter_app_bili_douban/views/home/subCmpts.dart';

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
  List <MovieItem> items = [];
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    /// 在initState方法中发生网络请求
    HttpRequest.request("https://douban.uieee.com/v2/movie/top250?start=0&count=20").then((response) {

      final List subjects = response.data["subjects"];

      List <MovieItem> netList = [];

      for(int i = 0; i< subjects.length; i++) {
        netList.add(MovieItem.fromMap(subjects[i]));
      }

      setState(() {
        this.items = netList;
      });

      print("res: ${items}");
      print("resType: ${items.runtimeType}");

    });
  }
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext, index) {
      MovieItem item = this.items[index];
      return MovieItemWidget(item);
    },
      itemCount: this.items.length,
    );
  }
}


