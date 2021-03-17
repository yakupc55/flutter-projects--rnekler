import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bottomNavigation() {
  return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(0, -3),
            color: Colors.black.withOpacity(0.25),
            blurRadius: 10),
      ], color: Color(0xffeff5fb)),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      //color: Color(0xffefff5fb),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavIcon(iconData: Icons.home_filled, active: true),
          buildNavIcon(iconData: Icons.search, active: false),
          buildNavIcon(iconData: Icons.shopping_basket, active: false),
          buildNavIcon(iconData: Icons.person, active: false),
        ],
      ));
}

Widget buildNavIcon({@required IconData iconData, @required bool active}) {
  return Icon(iconData,
      size: 20, color: Color(active ? 0xff0001fc : 0xff0a1034));
}
