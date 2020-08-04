import 'package:flutter/material.dart';
import 'package:ui_design2/Screens/Mingle%20Screen/design3/constants.dart';

class Secondary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _safePaddingTop = MediaQuery.of(context).padding.top;
    double _safePaddingBottom = MediaQuery.of(context).padding.bottom;
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height -
        (_safePaddingBottom + _safePaddingTop);
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      width: _width,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 70, top: 370),
            height: 130,
            child: GridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 22,
              crossAxisSpacing: 25,
              shrinkWrap: true,
              primary: false,
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(kImageUrl),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(kImageUrl),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(kImageUrl),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(kImageUrl),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(kImageUrl),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(kImageUrl),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(kImageUrl),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(kImageUrl),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(kImageUrl),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(kImageUrl),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(kImageUrl),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(kImageUrl),
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
