import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design2/Screens/Mingle%20Screen/design3/constants.dart';

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
      width: _width,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 70, top: 85),
            height: 60,
            child: Container(
              child: ListView(
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 0, top: 5, bottom: 5),
                    height: 50,
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(kImageUrl),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 18, top: 5, bottom: 5),
                    height: 50,
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(kImageUrl),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 18, top: 5, bottom: 5),
                    height: 50,
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(kImageUrl),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 18, top: 5, bottom: 5),
                    height: 50,
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(kImageUrl),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 18, top: 5, bottom: 5),
                    height: 50,
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(kImageUrl),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 18, top: 5, bottom: 5),
                    height: 50,
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(kImageUrl),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 18, top: 5, bottom: 5),
                    height: 50,
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(kImageUrl),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 18, top: 5, bottom: 5),
                    height: 50,
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(kImageUrl),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 18, top: 5, bottom: 5),
                    height: 50,
                    width: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(kImageUrl),
                      ),
                    ),
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
