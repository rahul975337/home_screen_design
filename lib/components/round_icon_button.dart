import 'package:flutter/material.dart';
import 'package:ui_design2/constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;

  final Function onPressed;
  RoundIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: kAccentColour,
      ),
      onPressed: onPressed,
      elevation: 20.0,
      constraints: BoxConstraints.tightFor(
        width: 20.0,
        height: 20.0,
      ),
      shape: CircleBorder(),
      fillColor: kPrimaryBackgroundColor,
    );
  }
}
