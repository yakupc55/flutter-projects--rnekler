import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/header.dart';

import 'category.dart';
import 'components/bottomNavigation.dart';

class CategoriesPage extends StatelessWidget {
  final List<String> categories = [
    "All",
    "Computers",
    "Accessories",
    "Smartphones",
    "Smart objects",
    "Speakers",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header("Categories", context),
                    SizedBox(height: 16),
                    Expanded(
                      child: ListView(
                        children: categories
                            .map((String title) =>
                                buildCategories(title, context))
                            .toList(),
                      ),
                    ),
                  ]))
        ],
      )),
      bottomNavigationBar: bottomNavigation("search"),
    );
  }
}

Widget buildCategories(String title, context) {
  return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return new CategoryPage(title);
        }));
      },
      child: Container(
        padding: EdgeInsets.all(24),
        margin: EdgeInsets.only(bottom: 16),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ]),
        child: Text(title,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff0a1034))),
      ));
}
