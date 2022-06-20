import 'package:flutter/material.dart';

final WhiteLine = Container(
  margin: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 20),
  width: double.infinity,
  height: 4,
  color: Colors.white,
);

Widget columnTitle(String titleText) {
  return Text(
    titleText,
    style: TextStyle(fontSize: 25, color: Colors.amber),
  );
}

Widget PriyaBlock(String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset(
        'images/woman.jpg',
        scale: 7,
      ),
      pinkText(text)
    ],
  );
}

Widget pinkText(String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 23, color: Colors.pink.shade500),
  );
}
