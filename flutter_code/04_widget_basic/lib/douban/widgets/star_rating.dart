import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  final int count;
  final int totalVale;
  final double value;
  final double size;

  StarRating(
      {this.count = 5,
        @required this.totalVale,
        this.value = 0.0,
        this.size = 20.0})
      : assert(count != null || count != 0);

  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          _fullStars(),
          _starValue(),
        ],
      ),
    );
  }

  Widget _fullStars() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(widget.count, (index) {
        return Container(
          child: Stack(
            children: [Icon(Icons.star_border, size: widget.size)],
          ),
        );
      }),
    );
  }

  Widget _starValue() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: _stars(),
    );
  }

  List<Widget> _stars() {
    final double oneValue = widget.totalVale / widget.count;
    int intValue = (widget.value / oneValue).floor();
    List<Widget> list = List.generate(intValue, (index) {
      return Container(
        child: Stack(
          children: [
            Icon(
              Icons.star,
              color: Colors.red,
              size: widget.size,
            )
          ],
        ),
      );
    });
    if (widget.totalVale == 0 || widget.totalVale == null) {
      return list;
    }
    final partStar = ClipRect(
      clipper: MyStarClipper(
          size: widget.size, otherValue: widget.value / oneValue - intValue),
      child: Icon(Icons.star, color: Colors.red, size: widget.size),
    );
    list.add(partStar);
    return list;
  }
}

class MyStarClipper extends CustomClipper<Rect> {
  final double size;
  final double otherValue;
  MyStarClipper({@required this.size, @required this.otherValue});

  @override
  Rect getClip(Size size) {
    final double clipWidth = this.size * otherValue;
    return Rect.fromLTWH(0, 0, clipWidth, size.height);
  }

  @override
  bool shouldReclip(MyStarClipper oldClipper) {
    return oldClipper.size != this.size;
  }
}