import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../colors.dart';

class UpperBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 35, top: 10),
          child: Text(
            'citoto',
            style: TextStyle(
                color: kAccentColour,
                fontSize: 28.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25, top: 10),
          child: Icon(
            Feather.search,
            color: kAccentColour,
            size: 25.0,
          ),
        )
      ],
    );
  }
}
