import 'package:flutter/material.dart';
import 'package:ui_design2/constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundIconButton({@required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        shape: CircleBorder(),
        onPressed: () {
          print('hey');
        },
        child: CircleAvatar(
          radius: 20,
          backgroundColor: kSecondaryBackgroundColor,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
