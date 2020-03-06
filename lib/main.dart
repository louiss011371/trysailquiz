import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'splash.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(mainpage());
var APP_BAR = 'TrySail Quiz　開発中';
var WEBSITE_HEADER = 'TrySail Quiz Home Page';
var VERSION = "2.0";

class mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: WEBSITE_HEADER,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splashscreen(),
    );
  }
}




