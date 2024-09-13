import 'dart:async';
import 'package:flutter/material.dart';
import 'package:online_kachehri/screens/Login_Screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
//aboutus  servicepolicy
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(Duration(seconds: 3), () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return Login_Screen();
        }));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/app_logo_lawyer.png',
            height: 150,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            'Online Kachehri',
            style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontFamily: 'serif'),
          ),
        ],
      ),
    ));
  }
}
