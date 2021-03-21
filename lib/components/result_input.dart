import 'package:flutter/material.dart';

class ResultInput extends StatelessWidget {
  final String label;
  final FontWeight fontWeight;
  final double fontSize;
  final Color color;

  ResultInput({
    @required this.label,
    @required this.color,
    @required this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ),
      padding: EdgeInsets.all(5.0),
      // color: Colors.yellow,
      alignment: Alignment.center,
    );
  }
}
