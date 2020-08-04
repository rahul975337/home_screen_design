import 'package:flutter/material.dart';

class MyFab extends StatefulWidget {
  @override
  _MyFabState createState() => _MyFabState();
}

class _MyFabState extends State<MyFab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton.extended(
          backgroundColor: const Color(0xff03dac6),
          foregroundColor: Colors.black,
          onPressed: () {
            // Respond to button press
          },
          icon: Icon(Icons.add),
          label: Text('EXTENDED'),
        ),
        FloatingActionButton.extended(
          backgroundColor: const Color(0xff03dac6),
          foregroundColor: Colors.black,
          onPressed: () {
            // Respond to button press
          },
          icon: Icon(Icons.add),
          label: Text('EXTENDED'),
        )
      ],
    );
  }
}
