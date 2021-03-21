import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String label;
  final Function onPress;

  BottomButton({@required this.label, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        height: kBottomContainerHeight,
        color: kBottomContainerColor,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 10.0,
        ),
        padding: EdgeInsets.only(
          bottom: 20.0,
        ),
        child: Text(
          label,
          style: kCalculateTextStyle,
        ),
      ),
    );
  }
}
