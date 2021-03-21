import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final Function onClick;

  RoundedIconButton({this.icon, this.onClick});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onClick,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon),
    );
  }
}
