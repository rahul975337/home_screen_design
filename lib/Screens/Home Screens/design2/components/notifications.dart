import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class Notifications extends StatelessWidget {
  final String sentence;
  final IconData icon;
  Notifications({this.sentence, this.icon});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  color: kSecondaryBackgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 30,
                    margin: EdgeInsets.all(5),
                    child: Text(
                      sentence,
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 13.0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                  color: kSecondaryBackgroundColor, shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Icon(
                  icon,
                  color: kAccentColour,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              height: 30,
              width: width - 200,
            ),
          ],
        ),
      ],
    );
  }
}
