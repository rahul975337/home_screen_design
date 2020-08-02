import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:ui_design2/components/roundbutton.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import '../constants.dart';
import 'icon_for_recents.dart';

class Recents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final title = 'Horizontal List';

    return Container(
      height: 120,
      //width

      child: Row(
        children: [
          Container(
            height: 120, //try this 1
            width: 60,
            color: kSecondaryBackgroundColor,
            child: Column(
              children: [
                Container(
                  width: 30,
                  child: Center(
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 14.0),
                        child: Text(
                          'Recenets',
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
                  margin: EdgeInsets.only(left: 20),
                  height: 100,
                  child: ListView(
                    shrinkWrap: true,
                    primary: false,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RecentsIcon(
                        icon: Feather.message_square,
                        left: 20,
                      ),
                      RecentsIcon(
                        icon: Feather.rss,
                        left: 30,
                      ),
                      RecentsIcon(
                        icon: Feather.settings,
                        left: 30,
                      ),
                      RecentsIcon(
                        icon: Feather.user,
                        left: 30,
                      ),
                      RecentsIcon(
                        icon: Feather.book_open,
                        left: 30,
                      ),
                      RecentsIcon(
                        icon: Feather.bell,
                        left: 30,
                      ),
                    ],
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
