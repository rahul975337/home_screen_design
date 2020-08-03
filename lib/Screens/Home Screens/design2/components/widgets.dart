import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ui_design2/Screens/Home%20Screens/design2/buttons%20and%20icons/roundbutton.dart';

import '../colors.dart';

class Widgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: 200,
      child: Row(
        children: [
          Container(
            height: 200,
            width: 60,
            color: kSecondaryBackgroundColor,
            child: Column(
              children: [
                Container(
                  width: 40,
                  child: Center(
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 55.0),
                        child: Text(
                          'Widgets',
                          style: TextStyle(color: kAccentColour, fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width - 60,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: GridView.count(
                      shrinkWrap: true,
                      primary: false,
//                    mainAxisSpacing: 5,
//                    crossAxisSpacing: 5,
                      crossAxisCount: 4,
                      children: <Widget>[
                        RoundIconButton(icon: Feather.rss),
                        RoundIconButton(icon: Feather.message_square),
                        RoundIconButton(icon: Feather.bell),
                        RoundIconButton(icon: Feather.book_open),
                        RoundIconButton(icon: Feather.user),
                        RoundIconButton(icon: Feather.settings),
                        RoundIconButton(icon: Feather.plus),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
