import 'package:flutter/material.dart';

import '../constants.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _safePaddingTop = MediaQuery.of(context).padding.top;
    double _safePaddingBottom = MediaQuery.of(context).padding.bottom;
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height -
        (_safePaddingBottom + _safePaddingTop);
    return Container(
      width: 60,
      height: _height,
      color: kSecondaryBackgroundColor,
      child: Column(children: []),
    );
  }
}
