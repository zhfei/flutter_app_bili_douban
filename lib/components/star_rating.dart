
import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  final double rating;
  final int maxRating;
  final Widget unSelectedImage;
  final Widget selectedImage;
  final int count;
  final double starSize;
  final Color unSelectedColor;
  final Color selectedColor;

  StarRating({
    @required this.rating,
    this.maxRating = 10,
    Widget unSelectedImage,
    Widget selectedImage,
    this.count = 5,
    this.starSize = 20,
    this.unSelectedColor = Colors.black54,
    this.selectedColor = const Color(0xffff0000),
}):unSelectedImage = unSelectedImage??Icon(Icons.star, color: unSelectedColor, size: starSize,) ,
  selectedImage = selectedImage??Icon(Icons.star, color: selectedColor, size: starSize,);



  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: <Widget>[
        getUnselectedStar(),
        getSelectedStar(),
      ],
    );
  }


  Widget getSelectedStar() {
    double oneValue = widget.maxRating / widget.count;
    int fullStarNum = (widget.rating / oneValue).floor();

    // 半颗星星的宽度
    double leftValue = (widget.rating / oneValue - fullStarNum)*widget.starSize;

    return Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(fullStarNum + 1, (int index) {
          if (index < fullStarNum) return widget.selectedImage;

          return ClipRect(
              clipper: MyClipper(leftValue),
              child: widget.selectedImage
          );
        })
    );
  }

  Widget getUnselectedStar() {
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(widget.count, (int index) {
          return widget.unSelectedImage;
        })
    );
  }

}



// 自定义切割
class MyClipper extends CustomClipper<Rect> {
  final double width;

  MyClipper(this.width);
  
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(MyClipper oldClipper) {
    // TODO: implement shouldReclip
    return oldClipper.width != this.width;
  }
  
}



