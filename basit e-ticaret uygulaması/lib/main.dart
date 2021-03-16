import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            body: SafeArea(
                child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Başlık
              buidBaslik(),

              //Banner
              buildBanner(),

              //Butonlar
              Padding(
                padding: EdgeInsets.only(top: 48),
                child: Row(
                  children: [
                    // ilk eleman
                  ],
                ),
              )
            ],
          ),
        ))));
  }
}

Widget buidBaslik() {
  return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Text("Home",
          style: TextStyle(
              fontSize: 32,
              color: Color(0xFF0A1034),
              fontWeight: FontWeight.bold)));
}

Widget buildBanner() {
  return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 24, right: 36, top: 14, bottom: 18),
        decoration: BoxDecoration(
            color: Color(0xff0001fc), borderRadius: BorderRadius.circular(6.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Bose Home Speaker",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600)),
                SizedBox(height: 4),
                Text("USD 279",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500))
              ],
            ),
            Image.asset(
              "assets/images/speaker.png",
              width: 68,
              height: 68,
            ),
          ],
        ),
      ));
}

buidNavigation({
  @required String text,
  @required IconData icon,
  Widget widget,
  BuildContext context,
}) {
  return GestureDetector(
      onTap: () {
        //  Navigator.push(context, MaterialPageRoute(builder: builder));
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 19, vertical: 22),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xffe0ecf8)),
            child: Icon(
              icon,
              color: Color(0xff0001fc),
              size: 18,
            ),
          ),
          SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(
                color: Color(0xff1f53e4),
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
        ],
      ));
}
