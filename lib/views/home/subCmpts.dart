
import 'package:flutter/material.dart';
import 'package:flutter_app_bili_douban/components/dotted_line.dart';
import 'package:flutter_app_bili_douban/components/star_rating.dart';
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
        getContentWidget(),
        getDottedLineWidget(),
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

  // 2.2内容介绍展示
  Widget getContentWidget() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            getContentTitle(),
            getContentRating(),
            getContentIntroduceWidget(),
          ],
        ),
      ),
    );
  }

  // 2.2.1电影标题
  Widget getContentTitle() {
    return Stack(
      children: <Widget>[
        Icon(Icons.play_circle_outline,size: 25, color: Colors.red,),
        Text.rich(
          TextSpan(
            children: <InlineSpan>[
              TextSpan(text: "      " + item.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              TextSpan(text: "(${item.year})", style: TextStyle(fontSize: 16, color: Colors.black54),),
            ],
          ),

//          TextSpan(text: item.title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),

        ),
      ],
    );
  }
  
  // 2.2.2电影评分
  Widget getContentRating() {
    return Row(
      children: <Widget>[
        StarRating(
         rating: item.rating.average,
          maxRating: item.rating.max,
          selectedColor: Colors.orange,
        ),
        Text("${item.rating.average}")
      ],
    );
  }

  Widget getContentIntroduceWidget() {
    String genresString =  item.genres.join(" ");
    String directorsString =  item.directors.join(" ");
    String castsString =  item.casts.join(" ");

    return Text("${genresString} / ${directorsString} / ${castsString}", maxLines: 2, overflow: TextOverflow.ellipsis,);
  }

  // 2.3想要展示
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

  // 2.4分割线
  Widget getDottedLineWidget() {
    return Container(
      width: 2,
      height: 100,
      child: DottedLine(
        dottedAxis: Axis.vertical,
        dottedColor: Color(0xffe0e0e0),
        dottedHight: 8,
        dottedWidth: 2,
        count: 8,
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

