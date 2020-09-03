import 'dart:async';

import 'package:flutter/material.dart';
import 'package:they_chat_app/views/homeScreen.dart';
import 'package:they_chat_app/views/startUpScreen.dart';

class SplashScreen extends StatefulWidget {



  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();

    startTimer(); //function for the time of splashscreen display
  }

  startTimer()async{
    var duration =   Duration(seconds: 2);
    return Timer(duration, route);
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
      return HomeScreen(); // Navigate to the home screen after display
    }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.grey[850],Colors.grey[850],Colors.grey[850],Colors.grey[850],]
                )
              ),
              height: double.infinity,
              width: double.infinity,
              child: Image(
                colorBlendMode: BlendMode.darken,
                image: AssetImage(
                  'images/logo.jpg',
                ),

              ),
            ),
          ],
        ),
      )
    );
  }
}








//
//Container(
//color: Colors.white,
//height: double.infinity,
//width: double.infinity,
//child: Column(
//mainAxisAlignment: MainAxisAlignment.center,
//children: [
//Icon(
//Icons.account_circle,
//size: 150,
//),
//SizedBox(
//height: 30,
//),
//Text(
//"Snapp Chat App",
//style: TextStyle(fontSize: 30),
//),
//SizedBox(
//height: 20,
//),
//FlatButton(
//child: Text("Tap to continue"),
//onPressed: () {
//Navigator.pushReplacement(context,
//MaterialPageRoute(builder: (_) {
//return StartUpScreen();
//}));
//},
//)
//],
//),
//),