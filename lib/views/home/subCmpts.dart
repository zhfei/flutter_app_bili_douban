
import 'package:flutter/material.dart';
import 'package:flutter_app_bili_douban/modles/home_modle.dart';

class MovieItemWidget extends StatelessWidget {

  final MovieItem item;
  MovieItemWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 10, style: BorderStyle.solid, color: Color(0xffe2e2e2))
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          getRateWidget(),
          SizedBox(width: 10,),
          Text("2"),
          SizedBox(width: 10,),
          getOrigalWidget(),
        ],
      ),
    );
  }



  /// 工具
  // 1.获取排名widget
  Widget getRateWidget() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blue
      ),
      child: Text("NO.${item.rateNum}", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),),
    );
  }

  // 2.获取origin电影名称
  Widget getOrigalWidget() {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0xffefefef)

      ),
      child: Text(item.original_title, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.grey),),
    );
  }
}

