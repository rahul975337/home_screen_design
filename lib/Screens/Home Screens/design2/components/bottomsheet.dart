import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../colors.dart';
import 'notifications.dart';

class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  Offset offset = Offset(0, 700);
  var curHeight = 300.0;
  var minHeight = 300.0;
  var expandedHeight = 620.0;
  var _startHeight;
  var _startDy;
  bool bottomStatus = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(height);
    return AnimatedPositioned(
      duration: Duration(milliseconds: 100),
      top: height - curHeight,
      // offset.dy,
      child: GestureDetector(
        onTap: () {
          if (curHeight <= minHeight) {
            setState(() {
              curHeight = expandedHeight;
            });
          } else {
            setState(() {
              curHeight = minHeight;
            });
          }
        },
        onVerticalDragStart: (s) {
          _startDy = s.globalPosition.dy;
          _startHeight = curHeight;
        },
        onVerticalDragUpdate: (a) {
          var _currentDy = a.globalPosition.dy;
          var newHeight = _startDy - _currentDy;
          setState(() {
            if ((_startHeight + newHeight) > minHeight &&
                (_startHeight + newHeight) < expandedHeight) {
              // curHeight = 300.0;
              curHeight = (_startHeight + newHeight);
            } else if ((_startHeight + newHeight) == minHeight) {
              curHeight = minHeight;
            } else if ((_startHeight + newHeight) == expandedHeight) {
              curHeight = expandedHeight;
            }
          });
        },
        onVerticalDragEnd: (c) {
          setState(() {
            if (curHeight > 450) {
              curHeight = expandedHeight;
            } else {
              curHeight = minHeight;
            }
          });
        },
        child: Container(
          height:
              // 200,
              // height / 1.3,
              height,
          width: width,
          decoration: BoxDecoration(
            color: kPrimaryBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Row(
            children: [
              Container(
//                  height: 100,
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
                            padding: const EdgeInsets.only(right: 50),
                            child: Text(
                              'Notifications',
                              style:
                                  TextStyle(color: kAccentColour, fontSize: 17),
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
//                    Container(
//                      height: 60,
//                      child:
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: [
//                          Text(
//                            "Citoto",
//                            style: TextStyle(
//                                fontSize: 20, fontWeight: FontWeight.bold),
//                          ),
//                        ],
//                      ),
//                    ),
                    Container(
                      color: kPrimaryBackgroundColor,
                      height:
                          // 100,
                          height / 1,
                      child: GestureDetector(
                        onTap: () {
                          print("tapped");
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: ListView(
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: 30,
                                    width: width - 200,
                                  ),
                                ],
                              ),
                              Notifications(
                                  sentence:
                                      'George abraham and 68 others liked your post ',
                                  icon: Feather.user),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'Alan Thomas and 3 others commented on a post that you are tagged in',
                                  icon: Feather.rss),
                              Notifications(
                                  sentence:
                                      'Feaorge Abraham commented on a post that you are tagged in',
                                  icon: Feather.rss),
                              Notifications(
                                  sentence:
                                      'Suman Hiremath liked a post you are tagged in',
                                  icon: Feather.rss),
                              Notifications(
                                  sentence: 'Suman Hirenath sent you a message',
                                  icon: Feather.message_square),
                              Notifications(
                                  sentence:
                                      'Feaorge Abraham commented on a post that you are tagged in',
                                  icon: Feather.rss),
                              Notifications(
                                  sentence:
                                      'Alan Thomas and 3 others commented on a post that you are tagged in',
                                  icon: Feather.rss),
                              Notifications(
                                  sentence:
                                      'Alan Thomas and 3 others commented on a post that you are tagged in',
                                  icon: Feather.rss),
                              Notifications(
                                  sentence:
                                      'George abraham and 68 others liked your post',
                                  icon: Icons.people),
                              Notifications(
                                  sentence:
                                      'Alan Thomas and 3 others commented on a post that you are tagged in',
                                  icon: Feather.rss),
                              Notifications(
                                  sentence:
                                      'George abraham and 68 others liked your post',
                                  icon: Icons.people),
                              Notifications(
                                  sentence:
                                      'Alan Thomas and 3 others commented on a post that you are tagged in',
                                  icon: Feather.rss),
                              Notifications(
                                  sentence:
                                      'George abraham and 68 others liked your post',
                                  icon: Icons.people),
                              Notifications(
                                  sentence:
                                      'Alan Thomas and 3 others commented on a post that you are tagged in',
                                  icon: Feather.rss),
                              Notifications(
                                  sentence:
                                      'Alan Thomas and 3 others commented on a post that you are tagged in',
                                  icon: Feather.rss),
                              Notifications(
                                  sentence:
                                      'Alan Thomas and 3 others commented on a post that you are tagged in',
                                  icon: Feather.rss),
                              Notifications(
                                  sentence:
                                      'Alan Thomas and 3 others commented on a post that you are tagged in',
                                  icon: Feather.rss),
                              Notifications(
                                  sentence:
                                      'Alan Thomas and 3 others commented on a post that you are tagged in',
                                  icon: Feather.rss),
                              Notifications(
                                  sentence:
                                      'Alan Thomas and 3 others commented on a post that you are tagged in',
                                  icon: Feather.rss),
                              Notifications(
                                  sentence:
                                      'George abraham and 68 others liked your post',
                                  icon: Icons.people),
                              Notifications(
                                  sentence:
                                      'George abraham and 68 others liked your post',
                                  icon: Icons.people),
                              Notifications(
                                  sentence:
                                      'George abraham and 68 others liked your post ',
                                  icon: Feather.user),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'George abraham and 68 others liked your post ',
                                  icon: Feather.user),
                              Notifications(
                                  sentence:
                                      'George abraham and 68 others liked your post ',
                                  icon: Feather.user),
                              Notifications(
                                  sentence:
                                      'You are only 40% authenticated,you can provide fingerprint for 20% increase ',
                                  icon: Feather.settings),
                              Notifications(
                                  sentence:
                                      'George abraham and 68 others liked your post ',
                                  icon: Feather.user),
                              Notifications(
                                  sentence:
                                      'George abraham and 68 others liked your post ',
                                  icon: Feather.user),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
