import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tride_mobility/constants/colours.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:tride_mobility/screens/login_screen.dart';

class IntroductoryScreen extends StatefulWidget {
  @override
  _IntroductoryScreenState createState() => _IntroductoryScreenState();
}

class _IntroductoryScreenState extends State<IntroductoryScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        alignment: Alignment.center,
        child: IntroductionScreen(
          key: introKey,
          pages: [
            PageViewModel(
              decoration: PageDecoration(
                contentMargin: EdgeInsets.only(top: screenHeight* 0.2),
              ),
              titleWidget: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        primaryBackground,
                        secondaryBackground,
                      ],
                    )
                ),
                margin: EdgeInsets.all(20),
                child: Icon(
                  Icons.search,
                  size: 30,
                  color: screenBackground,
                ),
              ),
              bodyWidget: Column(
                children: [
                  Container(
                    child: Text(
                      "Browse",
                      style: TextStyle(
                          fontSize: 40,
                          color: textColor1,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: screenWidth*0.6,
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Browse the best car for your daily, anywhere, anytime easily and without difficulty",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          color: textColor1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            PageViewModel(
              decoration: PageDecoration(
                contentMargin: EdgeInsets.only(top: screenHeight* 0.2),
              ),
              titleWidget: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        primaryBackground,
                        secondaryBackground,
                      ],
                    )
                ),
                margin: EdgeInsets.all(20),
                child: Icon(
                  Icons.search,
                  size: 30,
                  color: screenBackground,
                ),
              ),
              bodyWidget: Column(
                children: [
                  Container(
                    child: Text(
                      "Order",
                      style: TextStyle(
                          fontSize: 40,
                          color: textColor1,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: screenWidth*0.5,
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Order your favorite car with a choice of prices and specifications",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: textColor1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            PageViewModel(
              decoration: PageDecoration(
                contentMargin: EdgeInsets.only(top: screenHeight* 0.2),
              ),
              titleWidget: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        primaryBackground,
                        secondaryBackground,
                      ],
                    )
                ),
                margin: EdgeInsets.all(20),
                child: Icon(
                  Icons.search,
                  size: 30,
                  color: screenBackground,
                ),
              ),
              bodyWidget: Column(
                children: [
                  Container(
                    child: Text(
                      "Enjoy",
                      style: TextStyle(
                          fontSize: 40,
                          color: textColor1,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: screenWidth*0.6,
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Enjoy your trip happily and smiling almost anywhere in the city with family and friends",
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: textColor1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          dotsDecorator: DotsDecorator(
            spacing: EdgeInsets.only(top: 0,left: 10,right: 10),
            activeColor: primaryBackground,
            color: secondaryBackground,
            activeSize: Size(20,20),
            size: Size(10,10),
          ),
          doneColor: Colors.transparent,
          onDone: () => _onIntroEnd(context),
          showDoneButton: true,
          done:Icon(Icons.home,color: primaryBackground,size: 40,),
          nextColor: Colors.transparent,
          showNextButton: true,
          next: Icon(Icons.arrow_forward_ios,color: primaryBackground,size: 40,),
          showSkipButton: true,
          onSkip: () => _onIntroEnd(context),
          skip: Text('Skip',style: TextStyle(
            fontSize: 20,
          ),),
          globalBackgroundColor: Colors.grey[700],
        ),
      ),
    );
  }
}
