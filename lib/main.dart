import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/Home Screens/design2/design2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(),
      ),
      home: Design2(),
    );
  }
}
