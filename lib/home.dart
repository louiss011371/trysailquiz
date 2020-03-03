import 'package:flutter/material.dart';
import 'package:trysailquiz/main.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  List<String> images = [
    "assets/image/trysail_home.jpg",
    "assets/image/momo_home.jpg",
    "assets/image/sora_home.jpg",
    "assets/image/shiina_home.jpg"
  ];

  List<String> names = [
    "TrySail",
    "麻倉もも",
    "雨宮天",
    "夏川椎菜"
  ];

  List<Color> colors =[
    Colors.cyan.shade100,
    Colors.deepPurple.shade100,
    Colors.lightBlue.shade100,
    Colors.amber.shade300
  ];

  Widget customCardView(String name, String image, Color color) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(25.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 10
                ),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(100.0),
                  child: Container(
                    height: 150.0,
                    width: 150.0,
                    child: ClipOval(
                      child: Image(
                         fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 10.0
                ),
              child:Center(
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontFamily: "Quando",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          APP_BAR,
          style: TextStyle(
            fontFamily: "Quando",
          ),
        ),
      ),
      body:Center(
       child: Container(
        width: 500,
          child: ListView(
          children: <Widget>[
            customCardView(names[0], images[0],colors[0]),
            customCardView(names[1], images[1],colors[1]),
            customCardView(names[2], images[2],colors[2]),
            customCardView(names[3], images[3],colors[3]),
          ],
        ),
      )
      )
    );

  }

}