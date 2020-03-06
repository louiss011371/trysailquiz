import 'package:flutter/material.dart';
import 'package:trysailquiz/main.dart';

class quizpage extends StatefulWidget {
  @override
  _quizpageState createState() => _quizpageState();
}

class _quizpageState extends State<quizpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: WEBSITE_HEADER,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title:  Text(
            APP_BAR,
            style: TextStyle(
              fontFamily: "Quando",
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "mydata[0][i.toString()]",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: "Quando",
                    ),
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}