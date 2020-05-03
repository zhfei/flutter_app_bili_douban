
import 'package:flutter/material.dart';
import 'package:flutter_app_bili_douban/modles/home_modle.dart';

class MovieItemWidget extends StatelessWidget {

  final MovieItem item;
  MovieItemWidget(this.item);

  @override
  Widget build(BuildContext context) {
    return Text(item.title);
  }
}

