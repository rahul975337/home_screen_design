import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:ui_design2/components/bottomsheet.dart';
import 'package:ui_design2/components/icon_for_recents.dart';
import 'package:ui_design2/components/recents.dart';
import 'package:ui_design2/components/widgets.dart';
import 'package:ui_design2/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(),
      ),
      home: Scaffold(
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
      ),
    );
  }
}
