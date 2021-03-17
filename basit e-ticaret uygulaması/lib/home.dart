import 'package:flutter/material.dart';
import 'package:flutter_application_1/categories.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screnWidthvalue = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  // Başlık
                  buidBaslik(),

                  //Banner
                  buildBanner(),

                  //Butonlar
                  Padding(
                    padding: EdgeInsets.only(top: 48),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // ilk eleman
                        buidNavigation(
                            text: "Categories",
                            icon: Icons.home,
                            widget: CategoriesPage(),
                            context: context),
                        buidNavigation(text: "Favorites", icon: Icons.star),
                        buidNavigation(
                            text: "Gifts", icon: Icons.card_giftcard),
                        buidNavigation(
                            text: "Best selling", icon: Icons.people),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  //Sales title
                  Text(
                    "Sales",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0xff0a1034)),
                  ),
                  SizedBox(height: 16),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      buidSalesItem(
                          text: "Smartphones",
                          photoUrl: "assets/images/phone.png",
                          discount: "-50%",
                          screenWidth: screnWidthvalue),
                      buidSalesItem(
                          text: "Smartphones",
                          photoUrl: "assets/images/phone.png",
                          discount: "-50%",
                          screenWidth: screnWidthvalue),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      buidSalesItem(
                          text: "Smartphones",
                          photoUrl: "assets/images/phone.png",
                          discount: "-50%",
                          screenWidth: screnWidthvalue),
                      buidSalesItem(
                          text: "Smartphones",
                          photoUrl: "assets/images/phone.png",
                          discount: "-50%",
                          screenWidth: screnWidthvalue),
                    ],
                  ),

                  // buttom navigation bar
                ],
              )),
        ),
        bottomNavigationBar: Container(
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
            )));
  }

  Widget buildNavIcon({@required IconData iconData, @required bool active}) {
    return Icon(iconData,
        size: 20, color: Color(active ? 0xff0001fc : 0xff0a1034));
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
              color: Color(0xff0001fc),
              borderRadius: BorderRadius.circular(6.0)),
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
}

Widget buidNavigation({
  @required String text,
  @required IconData icon,
  Widget widget,
  BuildContext context,
}) {
  return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return widget;
        }));
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

Widget buidSalesItem({
  @required String text,
  @required String photoUrl,
  @required String discount,
  @required double screenWidth,
}) {
  return Container(
    //   color: Colors.red,
    padding: EdgeInsets.all(4),
    width: (screenWidth - 60) * 0.5,
    height: 300.0,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // %50
        Container(
          padding: EdgeInsets.only(top: 4, left: 0, right: 4, bottom: 4),
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2), color: Color(0xffe0ecf8)),
          child: Text(discount,
              style: TextStyle(color: Color(0xff1f53e4), fontSize: 12)),
        ),
        // telefon resmi
        SizedBox(height: 22),
        Center(
            child: Image.asset(
          photoUrl,
          width: 150,
          height: 150,
        )),
        SizedBox(height: 22),
        //ismi
        Center(
            child: Text(text,
                style: TextStyle(fontSize: 18, color: Color(0xff0a1034)))),
      ],
    ),
  );
}
