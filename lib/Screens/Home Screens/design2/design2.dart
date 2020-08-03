import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'buttons and icons/icon_for_recents.dart';
import 'colors.dart';
import 'components/bottomsheet.dart';
import 'components/recents.dart';
import 'components/widgets.dart';

class Design2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _safePaddingTop = MediaQuery.of(context).padding.top;
    double _safePaddingBottom = MediaQuery.of(context).padding.bottom;
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height -
        (_safePaddingBottom + _safePaddingTop);
    return Scaffold(
      backgroundColor: kPrimaryBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 60,
                      height: 160,
                      color: kSecondaryBackgroundColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35, top: 10),
                      child: RichText(
                        text: TextSpan(
                          text: 'citoto',
                          style: TextStyle(
                              color: kAccentColour,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                              text: '\n',
                            ),
                            TextSpan(
                              text: '\n',
                            ),
                            TextSpan(
                              text: 'Hello, ',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 30.0,
                              ),
                            ),
                            TextSpan(
                              text: '\n',
                            ),
                            TextSpan(
                              text: '   James Solomon',
                              style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 30.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Widgets(),
                Recents(),
                Container(),
              ],
            ),
            Bottom(),
            Container(
              margin: EdgeInsets.only(top: 650),
              child: RecentsIcon(
                icon: Feather.shuffle,
                left: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
