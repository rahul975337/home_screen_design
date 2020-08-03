import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ui_design2/Screens/Home%20Screens/design2/colors.dart';
import 'package:ui_design2/Screens/Mingle%20Screen/design3/buttons%20and%20icons/round_button_with_icon.dart';
import 'package:ui_design2/Screens/Mingle%20Screen/design3/components/primary.dart';
import 'package:ui_design2/Screens/Mingle%20Screen/design3/components/spam.dart';

import 'components/kiosk.dart';
import 'components/secondary.dart';

void main() {
  runApp(Design3());
}

class Design3 extends StatelessWidget {
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
                      height: _height,
                      color: kSecondaryBackgroundColor,
                      child: Column(
                        children: [
                          RotatedBox(
                            quarterTurns: -1,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 95.0),
                              child: Text(
                                'Kiosk',
                                style: TextStyle(
                                    color: kAccentColour, fontSize: 15),
                              ),
                            ),
                          ),
                          RotatedBox(
                            quarterTurns: -1,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 70.0),
                              child: Text(
                                'Primary',
                                style: TextStyle(
                                    color: kAccentColour, fontSize: 15),
                              ),
                            ),
                          ),
                          RotatedBox(
                            quarterTurns: -1,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 120.0),
                              child: Text(
                                'Secondary',
                                style: TextStyle(
                                    color: kAccentColour, fontSize: 15),
                              ),
                            ),
                          ),
                          RotatedBox(
                            quarterTurns: -1,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 110.0),
                              child: Text(
                                'Trash/Spam',
                                style: TextStyle(
                                    color: kAccentColour, fontSize: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 37),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'citoto',
                              style: TextStyle(
                                  color: kAccentColour,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 32),
                              child: Icon(
                                Icons.search,
                                color: kAccentColour,
                                size: 28,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Kiosk(),
                    Primary(),
                    Secondary(),
                    Spam(),
                  ],
                ),
                Container(),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: RoundButton(
                icon: Icons.arrow_back_ios,
                left: 40,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 670),
              child: RoundButton(
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
