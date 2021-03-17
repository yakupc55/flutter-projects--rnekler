import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(children: []))
      ],
    )));
  }
}
