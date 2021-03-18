import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/bottomNavigation.dart';
import 'package:flutter_application_1/components/label.dart';

import 'components/header.dart';

class ProductDetail extends StatefulWidget {
  String productTitle;

  ProductDetail(this.productTitle);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  Color selectedColor;
  int selectCapacity = 64;
  List<Color> colors = [
    Color(0xff52514f),
    Color(0xff0001fc),
    Color(0xff6f7972),
    Color(0xfff5d8c0)
  ];

  List<int> capacites = [64, 256, 512];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(children: [
                header(widget.productTitle, context),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // new etiketi
                      //  label("New"),
                      SizedBox(height: 5),

                      // ürün fotoğrafı
                      Center(
                        child: Image.asset(
                          "assets/images/phone.png",
                          width: 160,
                          height: 240,
                        ),
                      ),
                      SizedBox(height: 5),

                      // renk seçenekleri
                      Text("Color",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff0a1034))),

                      SizedBox(height: 16),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: colors
                              .map((Color color) => colorOption(
                                  color: color,
                                  selected: selectedColor == color,
                                  onTap: () {
                                    setState(() {
                                      selectedColor = color;
                                    });
                                  }))
                              .toList()),

                      // kapasite şeçenekleri
                      SizedBox(height: 32),
                      Text("Capacity",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff0a1034))),
                      SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: capacites
                            .map((int a) => capacityOption(
                                capacity: a,
                                selected: selectCapacity == a,
                                onTap: () {
                                  setState(() {
                                    selectCapacity = a;
                                  });
                                }))
                            .toList(),
                      ),
                      SizedBox(height: 32),

                      // sepete ekle butonu
                      GestureDetector(
                          onTap: () {
                            print("ürün sepete eklendi.");
                            print("Ürünün ismi: " + widget.productTitle);
                            print("ürünün rengi: " +
                                selectedColor.value.toString());
                            print("ürünün kapasitesi: " +
                                selectCapacity.toString());
                          },
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(vertical: 16),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Color(0xff1f53e4)),
                            child: Text(
                              "Add to cart",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ))
                    ],
                  ),
                )
              ]),
            ),
          ),
        ]),
      ),
      bottomNavigationBar: bottomNavigation("search"),
    );
  }
}

Widget colorOption({Color color, bool selected, Function onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: selected ? Border.all(color: Colors.black, width: 4) : null),
      width: 23,
      height: 23,
      child: Text(""),
    ),
  );
}

Widget capacityOption({int capacity, bool selected, Function onTap}) {
  return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 23),
        child: Text(
          "$capacity gb",
          style: TextStyle(
            color: Color(selected ? 0xff0001fc : 0xffa7a9be),
            fontSize: 16,
          ),
        ),
      ));
}
