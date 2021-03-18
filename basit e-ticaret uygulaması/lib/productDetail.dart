import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/label.dart';

import 'components/header.dart';

class ProductDetail extends StatefulWidget {
  String productTitle;

  ProductDetail(this.productTitle);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            header(widget.productTitle, context),
            SizedBox(height: 16),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    // new etiketi
                    label("New"),
                    SizedBox(height: 25),

                    // ürün fotoğrafı
                    Image.asset(
                      "assets/images/phone.png",
                      width: 300,
                      height: 400,
                    ),
                    SizedBox(height: 25),

                    // renk seçenekleri
                    Text("Color",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff0a1034))),
                    // kapasite şeçenekleri
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          width: 23,
                          color: Color(0xff52514f),
                          child: Text(""),
                        )
                      ],
                    )
                    // sepete ekle butonu
                  ],
                ))
          ]),
        ),
      ]),
    ));
  }
}
