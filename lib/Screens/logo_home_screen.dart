import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trainyourplane/constants/color_constant.dart';
import '../Screens/home_page.dart';

class LogoHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogoScreen(),
    );
  }
}

class LogoScreen extends StatefulWidget {
  @override
  _LogoScreentate createState() => _LogoScreentate();
}

class _LogoScreentate extends State<LogoScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 0), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> HomePage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mdarkestblue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo here
            Image.asset('assets/images/logo.png', height: 120,),
            // ignore: prefer_const_constructors
            SizedBox(height:20,),
            // ignore: prefer_const_constructors
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(mcolorblue2),
            )
          ],
        ),
      ) ,
    );
  }
}


