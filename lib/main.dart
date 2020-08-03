import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screens/Mingle Screen/design3/design3.dart';

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
        home: Design3());
  }
}
