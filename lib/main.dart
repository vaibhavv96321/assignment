import 'package:flutter/material.dart';

import 'HomePage.dart';

void main() => runApp(CampYellow());

class CampYellow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          brightness: Brightness.dark,
          primaryColor: Colors.amber,
          primaryTextTheme: TextTheme(
              bodyText1:
                  TextStyle(color: Colors.pinkAccent, fontFamily: 'Rale'))),
    );
  }
}
