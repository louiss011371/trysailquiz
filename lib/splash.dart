import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trysailquiz/home.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5 ), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => homepage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(children: <Widget>[
          Expanded(
            child: SpinKitCubeGrid(
              color: Colors.white,
              size: 100.0,
            ),
          ),
        ]),
      ),
    );
  }
}