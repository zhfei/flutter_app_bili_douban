
import 'package:flutter/material.dart';
import 'package:flutter_app_bili_douban/components/star_rating.dart';

class Group extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("小组"),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
            child: StarRating(
              rating: 7,
              maxRating: 10,
              count: 8,
              starSize: 50,
              unSelectedColor: Colors.deepPurpleAccent,
            )
        ),
      ),
    );
  }
}

