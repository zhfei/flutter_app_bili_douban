
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
          SizedBox(height: 10,),
          getOrginalWidget(),
          SizedBox(height: 10,),
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
        color: Color.fromARGB(255, 219,	167,	61)
      ),
      child: Text("NO.${item.rateNum}", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
    );
  }

  // 2.获取中间内容widget
  Widget getOrginalWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        getContentImage(),
        Expanded(
            child: Text("内容显示")
        ),
        Text("分割线显示"),
        getContentWish(),
      ],
    );
  }

  // 2.1图片展示
  Widget getContentImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image.network(item.images.small, height: 150,));
  }

  // 2.4想要展示
  Widget getContentWish() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
      child: Column(
        children: <Widget>[
          Image.asset("assets/home/xiangkan_selected.png", width: 36,),
          SizedBox(height: 5,),

          Text("想看", style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 219,	167,	61),)),
        ],
      ),
    );
  }

  // 3.获取origin电影名称
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

