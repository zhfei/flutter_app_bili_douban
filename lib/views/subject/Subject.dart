
import 'package:flutter/material.dart';
import 'package:flutter_app_bili_douban/components/dotted_line.dart';

class Subject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("书影音"),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
          child: DottedLine(
            dottedWidth: 2,
            dottedHight: 10,
            dottedColor: Colors.blue,
            dottedAxis: Axis.vertical,
            count: 12,

          ),
        ),
      ),
    );
  }
}

