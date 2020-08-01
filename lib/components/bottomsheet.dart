import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design2/components/roundbutton.dart';
import 'package:ui_design2/constants.dart';

class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  Offset offset = Offset(0, 770);
  var curHeight = 300.0;
  var minHeight = 300.0;
  var expandedHeight = 650.0;
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
            if (curHeight > 200) {
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
            ),
            child: Column(
              children: [
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Citoto",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: kPrimaryBackgroundColor,
                  height:
                      // 100,
                      height / 1,
                  child: GestureDetector(
                    onTap: () {
                      print("tapped");
                    },
                    child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 60,
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: kPrimaryBackgroundColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 3,
                                    color: kPrimaryBackgroundColor)
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  'George Abraham and 68 others liked your post',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'DancingScript',
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.person,
                                color: kAccentColour,
                              )
                            ],
                          ),
//                          child: ListTile(
//                              leading: Text(
//                                'tilwani03@gmail.com',
//                                style: TextStyle(
//                                    fontSize: 15.0,
//                                    color: Colors.white,
//                                    fontFamily: 'DancingScript'),
//                              ),
//                              trailing: RoundIconButton(
//                                onPressed: null,
//                                icon: Icons.person,
//                              )),
                        );
                      },
                    ),
                  ),
                ),
//                Expanded(
//                    child:
//                        Container(height: 10, color: kPrimaryBackgroundColor))
              ],
            )),
      ),
    );
  }
}
