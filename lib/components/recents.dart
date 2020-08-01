import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:ui_design2/components/roundbutton.dart';

class Recents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';

    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 100.0,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RoundIconButton(
                  onPressed: () {
                    print('hhh');
                  },
                  icon: Icons.wifi,
                ),
              ),
            ),
          )),
          Container(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundIconButton(
                onPressed: () {
                  print('hhh');
                },
                icon: Icons.message,
              ),
            ),
          )),
          Container(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundIconButton(
                onPressed: () {
                  print('hhh');
                },
                icon: Icons.notifications,
              ),
            ),
          )),
          Container(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundIconButton(
                icon: Icons.book,
                onPressed: () {
                  print('hhh');
                },
              ),
            ),
          )),
          Container(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundIconButton(
                icon: Icons.person,
                onPressed: () {
                  print('hhh');
                },
              ),
            ),
          )),
          Container(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundIconButton(
                icon: Icons.settings,
                onPressed: () {
                  print('hhh');
                },
              ),
            ),
          )),
          Container(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundIconButton(
                icon: Icons.add,
                onPressed: () {
                  print('hhh');
                },
              ),
            ),
          )),
        ],
      ),
    );
  }
}
