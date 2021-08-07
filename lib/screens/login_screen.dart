import 'package:flutter/material.dart';
import 'package:tride_mobility/constants/colours.dart';
import 'package:tride_mobility/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color: screenBackground,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              margin: EdgeInsets.only(top: 20,left: 20,right: 20),
              alignment: Alignment.center,
              child: Text(
                  "Welcome Back",
                  style: TextStyle(
                      fontSize: 40,
                      color: textColor2,
                      fontWeight: FontWeight.bold
                  ),
                ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10,left: 20,right: 20),
              alignment: Alignment.center,
              child: Text(
                "Sign in to continue",
                style: TextStyle(
                    fontSize: 20,
                    color: textColor3,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20,left: 20,right: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey,width: 1)
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[200],
                    ),
                    margin: EdgeInsets.only(
                        left: 20.0, right: 20, top: 20),
                    child: TextFormField(
                      controller: email,
                      readOnly: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email",
                        contentPadding: EdgeInsets.only(left: 20)
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[200],
                    ),
                    margin: EdgeInsets.only(
                        left: 20.0, right: 20, top: 20,bottom: 10),
                    child: TextFormField(
                      controller: password,
                      readOnly: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          contentPadding: EdgeInsets.only(left: 20)
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            primaryBackground,
                            secondaryBackground,
                          ],
                        )
                    ),
                    margin: EdgeInsets.only(
                        left: 20.0, right: 20, top: 20,bottom: 10),
                    child: Theme(
                      data: ThemeData(
                        elevatedButtonTheme: ElevatedButtonThemeData(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                          ),
                        ),
                      ),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: screenBackground,
                            ),
                          )),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
