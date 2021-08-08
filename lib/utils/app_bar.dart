import 'package:easy_gradient_text/easy_gradient_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tride_mobility/constants/colours.dart';

class AppBarWidget extends StatefulWidget {

  final String title1;
  final String title2;
  AppBarWidget({this.title1,this.title2});

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GradientText(
            text: widget.title1,
            colors: [
              primaryBackground,
              secondaryBackground
            ],
            gradientDirection: GradientDirection.ttb,
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 3,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.red,
              gradient: LinearGradient(
                colors: [
                  primaryBackground,
                  secondaryBackground
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 5,right: 5),
              child: Text(
                widget.title2,
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: screenBackground),
              ),
            ),
          ),
        ],
      ),
      // bottom: PreferredSize(
      //     preferredSize: Size.fromHeight(40),
      //   child: Container(
      //     color: Colors.red,
      //     child:  GradientText(
      //       text: widget.title1,
      //       colors: [
      //         primaryBackground,
      //         secondaryBackground
      //       ],
      //       gradientDirection: GradientDirection.ttb,
      //       style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
      //     ),
      //   ),
      // ),
    );
  }
}
