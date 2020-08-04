import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Kiosk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _safePaddingTop = MediaQuery.of(context).padding.top;
    double _safePaddingBottom = MediaQuery.of(context).padding.bottom;
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height -
        (_safePaddingBottom + _safePaddingTop);
    return Container(
      margin: EdgeInsets.only(left: 19, right: 20),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 70, top: 85),
            height: 50,
            child: Container(
              child: ListView(
                primary: false,
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: NetworkImage(kImageUrl),
                  ),
                  SizedBox(
                    width: 26,
                  ),
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: NetworkImage(kImageUrl),
                  ),
                  SizedBox(
                    width: 26,
                  ),
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: NetworkImage(kImageUrl),
                  ),
                  SizedBox(
                    width: 26,
                  ),
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: NetworkImage(kImageUrl),
                  ),
                  SizedBox(
                    width: 26,
                  ),
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: NetworkImage(kImageUrl),
                  ),
                  SizedBox(
                    width: 26,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
