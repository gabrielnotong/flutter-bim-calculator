import 'package:flutter/material.dart';

class ReuseAbleCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPress;

  ReuseAbleCard({@required this.color, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        margin: EdgeInsets.all(10.0),
      ),
    );
  }
}
