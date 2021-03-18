import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottomNavigation.dart';
import 'package:flutter_application_1/components/header.dart';
import 'package:flutter_application_1/productDetail.dart';

class CategoryPage extends StatelessWidget {
  String categoryTitle;

  CategoryPage(this.categoryTitle);

  List<Map> product = [
    {
      "isim": "Surface laptop 3",
      "fotograf": "assets/images/laptop.png",
      "fiyat": "999"
    },
    {
      "isim": "iphone 11 pro",
      "fotograf": "assets/images/laptop.png",
      "fiyat": "999"
    },
    {
      "isim": "Mackbook",
      "fotograf": "assets/images/laptop.png",
      "fiyat": "999"
    },
    {
      "isim": "başka birşey",
      "fotograf": "assets/images/laptop.png",
      "fiyat": "999"
    },
    {
      "isim": "Surface laptop 7",
      "fotograf": "assets/images/laptop.png",
      "fiyat": "999"
    },
    {
      "isim": "Surface laptop 8",
      "fotograf": "assets/images/laptop.png",
      "fiyat": "999"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(categoryTitle, context),
                  SizedBox(height: 32),
                  // içeriklers
                  Expanded(
                    child: GridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        children: product.map((Map pro) {
                          return buildContent(pro["isim"], pro["fotograf"],
                              pro["fiyat"], context);
                        }).toList()),
                  )
                ],
              )),
        ]),
      ),
      bottomNavigationBar: bottomNavigation("search"),
    );
  }
}

Widget buildContent(String title, String photoUrl, String price, context) {
  return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ProductDetail(title);
        }));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 24,
                  offset: Offset(0, 16))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 2,
            ),
            Image.asset(
              photoUrl,
              width: 135,
              height: 90,
            ),
            SizedBox(height: 16),
            Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Color(0xff001034),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "USD $price",
                  style: TextStyle(
                      color: Color(0xff0001fc),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ],
            )
          ],
        ),
      ));
}
