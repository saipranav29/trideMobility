import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tride_mobility/constants/colours.dart';
import 'package:tride_mobility/utils/CarouselContainer.dart';
import 'package:tride_mobility/utils/app_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<dynamic> photoURl = [
  {
    "photo":"images/tride_icon.jpeg"
  },
    {
      "photo":"images/tride_icon.jpeg"
    },
    {
      "photo":"images/tride_icon.jpeg"
    },
    {
      "photo":"images/tride_icon.jpeg"
    },
  ];

  List<dynamic> itemList = [
    {
      "photo":"images/tride_icon.jpeg",
      "prodname":"ABC",
      "price": "100"
    },
    {
      "photo":"images/tride_icon.jpeg",
      "prodname":"DEF",
      "price": "200"
    },
    {
      "photo":"images/tride_icon.jpeg",
      "prodname":"GHI",
      "price": "300"
    },
    {
      "photo":"images/tride_icon.jpeg",
      "prodname":"JKL",
      "price": "400"
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBarWidget(
          title1: "Tride",
          title2: "Mobility"
        ),

      ),
      backgroundColor: screenBackground2,
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              //color: screenBackground,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: 200,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  viewportFraction: 0.6,
                ),
                itemCount: photoURl.length,
                itemBuilder: (BuildContext context , int index, int pageIndex) => Container(
                    decoration: BoxDecoration(
                       color: screenBackground,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    height: 150,
                    width: 150,
                    child: Image.asset(photoURl[index]['photo'],alignment: Alignment.center,fit: BoxFit.fill,)),

              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (_, index) => Container(
                margin: EdgeInsets.only(left: 10,right: 10,bottom: 10,top:10),
                child: Column(
                  children: [
                   Text(itemList[index]['prodname'] ?? "svfinj",
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 25,
                     color: primaryBackground
                   ),),
                    Container(
                      height: 80,
                      width: 80,
                        margin: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child: Image.asset(itemList[index]['photo'] ?? "fsdoibn",alignment: Alignment.center,fit: BoxFit.fill,)
                    ),
                    Text("Rs. " + itemList[index]['price'] ?? "sfdonl",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: secondaryBackground
                      ),),
                  ],
                ),
                color: screenBackground,
              ),
              itemCount: 4,
            )
          ],
        ),
      ),

    );
  }
}
