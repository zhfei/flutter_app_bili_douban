
import 'package:flutter/material.dart';

class DottedLine extends StatelessWidget {
  final double dottedWidth;
  final double dottedHight;
  final int count;
  final Axis dottedAxis;
  final Color dottedColor;


  DottedLine(
  { this.dottedWidth = 2,
    this.dottedHight = 2,
    this.count = 10,
    this.dottedAxis = Axis.horizontal,
    this.dottedColor = const Color(0xffe0e0e0)
  }
      );


  @override
  Widget build(BuildContext context) {
//    return LayoutBuilder(
//      builder: (BuildContext context, BoxConstraints constraints) {
//        //获取父widget的宽高
//        var supWidgetWidth =  constraints.constrainWidth;
//        var supWidgetHeight =  constraints.constrainHeight;
//        return Container(
//
//        );
//      },
//    );


  return Flex(
    direction: dottedAxis,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: List.generate(count, (index) {
      return Container(width: dottedWidth, height: dottedHight, color: dottedColor,);
    }),
  );
  }
}

