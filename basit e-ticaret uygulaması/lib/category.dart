import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/header.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [header("Laptop", context)],
            )),
      ]),
    ));
  }
}
