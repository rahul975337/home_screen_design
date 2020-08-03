import 'package:flutter/material.dart';

import '../colors.dart';

class RoundButton extends StatelessWidget {
  final IconData icon;
  final double left;

  RoundButton({this.icon, this.left});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: left),
      decoration: BoxDecoration(
          color: kSecondaryBackgroundColor, shape: BoxShape.circle),
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Icon(
          icon,
          color: kAccentColour,
        ),
      ),
    );
  }
}
