import 'package:flutter/material.dart';

Widget label(String text) {
  return Container(
    padding: EdgeInsets.only(top: 4, left: 0, right: 4, bottom: 4),
    width: 40,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2), color: Color(0xffe0ecf8)),
    child: Text(text, style: TextStyle(color: Color(0xff1f53e4), fontSize: 12)),
  );
}
