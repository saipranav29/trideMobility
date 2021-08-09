import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tride_mobility/constants/colours.dart';
import 'package:tride_mobility/utils/app_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> photoURl = [
    {"photo": "images/tride_icon.jpeg"},
    {"photo": "images/tride_icon.jpeg"},
    {"photo": "images/tride_icon.jpeg"},
    {"photo": "images/tride_icon.jpeg"},
  ];

  List<dynamic> itemList = [
    {"photo": "images/tride_icon.jpeg", "prodname": "ABC", "price": "100"},
    {"photo": "images/tride_icon.jpeg", "prodname": "DEF", "price": "200"},
    {"photo": "images/tride_icon.jpeg", "prodname": "GHI", "price": "300"},
    {"photo": "images/tride_icon.jpeg", "prodname": "JKL", "price": "400"},
    {"photo": "images/tride_icon.jpeg", "prodname": "ABC", "price": "100"},
    {"photo": "images/tride_icon.jpeg", "prodname": "DEF", "price": "200"},
    {"photo": "images/tride_icon.jpeg", "prodname": "GHI", "price": "300"},
    {"photo": "images/tride_icon.jpeg", "prodname": "nav", "price": "400"},
  ];
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBarWidget(title1: "Tride", title2: "Mobility"),
      ),
      backgroundColor: screenBackground2,
      body: Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [
           Column(
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
                       onPageChanged: (index,reason) {
                         setState(() {
                           _current=index;
                         });
                       }
                   ),
                   itemCount: photoURl.length,
                   itemBuilder: (BuildContext context, int index, int pageIndex) =>
                       Container(
                           margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                           child: ClipRRect(
                             borderRadius: BorderRadius.all(
                               Radius.circular(5.0),
                             ),
                             child: Image(
                               height: 100,
                               width: 300,
                               fit: BoxFit.fill,
                               image: AssetImage(
                                 photoURl[index]['photo'],
                               ),
                             ),
                           )),
                 ),
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: photoURl.map((url) {
                   int index = photoURl.indexOf(url);
                   return Container(
                     width: 8,
                     height: 8,
                     margin: EdgeInsets.symmetric(
                       vertical: 10,
                       horizontal: 3,
                     ),
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: _current == index
                           ? Color.fromRGBO(0, 0, 0, 0.9)
                           : Color.fromRGBO(0, 0, 0, 0.4),
                     ),
                   );
                 }).toList(),
               ),
               ConstrainedBox(
                 constraints: BoxConstraints(
                   maxHeight: double.infinity,
                 ),
                 child: Container(
                   margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                   child: GridView.count(
                     crossAxisCount: 2,
                     crossAxisSpacing: 10,
                     mainAxisSpacing: 10,
                     shrinkWrap: true,
                     scrollDirection: Axis.vertical,
                     physics: NeverScrollableScrollPhysics(),
                     children: itemList.map((item) => Card(
                       color: Colors.transparent,
                       elevation: 0,
                       child: Container(
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             image: DecorationImage(
                                 image: AssetImage(item['photo']),
                                 fit: BoxFit.cover
                             )
                         ),
                         child: Stack(
                           children: [
                             Positioned(
                                 left: 0.0,
                                 right: 0.0,
                                 bottom: 0.0,
                                 child:  Container(
                                  // alignment: Alignment.bottomLeft,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                                     gradient: LinearGradient(
                                         colors: [
                                           primaryBackground,
                                           secondaryBackground
                                         ],
                                         begin: Alignment.topLeft,
                                         end: Alignment.bottomRight
                                     ),
                                   ),
                                   child: Container(
                                     padding: EdgeInsets.only(left: 10),
                                     child: Text(
                                       item['prodname'],
                                       style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: screenBackground),
                                     ),
                                   ),
                                 ),),
                             Positioned(
                               right: 0.0,
                               bottom: 0.0,
                               child:  Container(
                                 child: Padding(
                                   padding: EdgeInsets.only(right: 10),
                                   child: Text(
                                     "Rs." + item['price'],
                                     style: TextStyle(fontSize: 20,color: screenBackground),
                                   ),
                                 ),
                               ),),
                           ],
                         ),
                       ),
                     )).toList(),
                   ),

                 ),
               ),
             ],
           ),

          ],
        ),
      ),
    );
  }
}
