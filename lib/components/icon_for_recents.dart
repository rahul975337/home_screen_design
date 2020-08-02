import 'package:flutter/material.dart';

import '../constants.dart';

class RecentsIcon extends StatelessWidget {
  final IconData icon;
  final double left;

  RecentsIcon({this.icon, this.left});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: left),
      decoration: BoxDecoration(
          color: kSecondaryBackgroundColor, shape: BoxShape.circle),
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
