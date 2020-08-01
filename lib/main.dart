import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design2/components/bottomsheet.dart';
import 'package:ui_design2/components/mainbar.dart';
import 'package:ui_design2/components/recents.dart';
import 'package:ui_design2/components/sidebar.dart';
import 'package:animations/animations.dart';
import 'package:ui_design2/components/widgets.dart';
import 'package:ui_design2/constants.dart';

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
      home: Scaffold(
        backgroundColor: kPrimaryBackgroundColor,
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'citoto',
                      style: TextStyle(
                          color: kAccentColour,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'Hello, ',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\n',
                          ),
                          TextSpan(
                            text: '  James Solomon',
                            style:
                                TextStyle(color: Colors.white, fontSize: 30.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Widgets(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Recents(),
                  ),
                  Container(),
                ],
              ),
              Bottom(),
//              DraggableScrollableSheet(
//                initialChildSize: 0.3,
//                builder: (context, controller) {
//                  return Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Container(
//                      child: ListView.builder(
//                        itemCount: 100,
//                        controller: controller,
//                        itemBuilder: (BuildContext context, index) {
//                          return ListTile(
//                            title: Text('Item $index'),
//                          );
//                        },
//                      ),
//                      decoration: BoxDecoration(
//                        color: kSecondaryBackgroundColor,
//                        borderRadius: BorderRadius.only(
//                          topLeft: Radius.circular(20),
//                          topRight: Radius.circular(20),
//                        ),
//                      ),
//                    ),
//                  );
//                },
//              )
            ],
          ),
        ),
      ),
    );
  }
}
