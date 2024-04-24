import 'package:flutter/material.dart';

class Reusecard extends StatelessWidget {
  final double height;
  final color;
  Reusecard({required this.height, required this.Card , @required this.color});
  final Widget Card;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card,
      height: height,
      margin: EdgeInsets.all(11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30), color: Color(color),
      ),
    );
  }
}
