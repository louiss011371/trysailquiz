import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:trysailquiz/main.dart';
import 'package:trysailquiz/resultpage.dart';

class getjson extends StatelessWidget {

  String name;
  getjson(this.name);
  String assettoload;

  setasset() {
    if (name == "雨宮天") {
      assettoload = "assets/json/soraquiz.json";
    } else {
      assettoload = "assets/json/python.json";
    }
  }

  @override
  Widget build(BuildContext context) {

    setasset();
    return FutureBuilder (
        future: DefaultAssetBundle.of(context).loadString(assettoload, cache: true),
            builder: (context, snapshot) {
          List mydata = json.decode(snapshot.data.toString());
          if (mydata == null) {
            return Scaffold(
              body: Center(
                child: Text(
                  "Loading",
                ),
              ),
            );
          } else {
            return quizpage(mydata: mydata);
          }
        },
    );
  }
}

class quizpage extends StatefulWidget {
 var mydata;

 quizpage({Key key, @required this.mydata}) : super(key: key);
  @override
  _quizpageState createState() => _quizpageState(mydata);
}

class _quizpageState extends State<quizpage> {
  var mydata;
  _quizpageState(this.mydata);

  Color colortoshow = Colors.indigoAccent;
  Color right = Colors.green;
  Color wrong = Colors.red;
  int marks = 0;

  Map<String, Color> btncolor = {
    "a": Colors.indigoAccent,
    "b": Colors.indigoAccent,
    "c": Colors.indigoAccent,
    "d": Colors.indigoAccent,
  };

  void checkanswer(String k) {
    if( mydata[2]["1"] == mydata[1]["1"][k] ){
        marks = marks + 10;
        colortoshow = right;
     }else  {
       colortoshow = wrong;
    }
    setState(() {
      btncolor[k] = colortoshow;
    });
    }

  int i = 1;
  // extra varibale to iterate
  int j = 1;
  int timer = 30;
  String showtimer = "30";

  bool canceltimer = false;

//  @override
//  void initState() {
//    starttimer();
//    super.initState();
//  }
//  var random_array = [1, 6, 7, 2, 4, 10, 8, 3, 9, 5];
//  // overriding the setstate function to be called only if mounted
//  @override
//  void setState(fn) {
//    if (mounted) {
//      super.setState(fn);
//    }
//  }

//  void starttimer() async {
//    const onesec = Duration(seconds: 1);
//    Timer.periodic(onesec, (Timer t) {
//      setState(() {
//        if (timer < 1) {
//          t.cancel();
//          nextquestion();
//        } else if (canceltimer == true) {
//          t.cancel();
//        } else {
//          timer = timer - 1;
//        }
//        showtimer = timer.toString();
//      });
//    });
//}
//
//  void nextquestion() {
//    canceltimer = false;
//    timer = 30;
//    setState(() {
//      if (j < 10) {
//        i = random_array[j];
//        j++;
//      } else {
//        Navigator.of(context).pushReplacement(MaterialPageRoute(
//          builder: (context) => resultpage(marks: marks),
//        ));
//      }
//      btncolor["a"] = Colors.indigoAccent;
//      btncolor["b"] = Colors.indigoAccent;
//      btncolor["c"] = Colors.indigoAccent;
//      btncolor["d"] = Colors.indigoAccent;
//    });
//    starttimer();
//  }

//    if (mydata[2][i.toString()] == mydata[1][i.toString()][k]) {
//      // just a print sattement to check the correct working
//      // debugPrint(mydata[2][i.toString()] + " is equal to " + mydata[1][i.toString()][k]);
//      marks = marks + 5;
//      // changing the color variable to be green
//      colortoshow = right;
//    } else {
//      // just a print sattement to check the correct working
//      // debugPrint(mydata[2]["1"] + " is equal to " + mydata[1]["1"][k]);
//      colortoshow = wrong;
//    }
//    setState(() {
//      // applying the changed color to the particular button that was selected
//      btncolor[k] = colortoshow;
//      canceltimer = true;
//    });
//
//    // changed timer duration to 1 second
// //   Timer(Duration(seconds: 1), nextquestion);
//  }

  Widget choicebutton(String k) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 29.0,
      ),
      child: MaterialButton(
        onPressed: ()=> checkanswer(k),
        //  onPressed: () {},
        child: Text (mydata[1]["1"][k],
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Alike",
          fontSize: 16.0
          ),
          maxLines: 1,
        ),
        color: btncolor[k],
        splashColor: Colors.indigo[700],
        minWidth: 200.0,
        height: 40.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("やりなおすことはできませんよ！"),
          ),
        );
      },
      child: MaterialApp(
        title: WEBSITE_HEADER,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
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
                  child: Center(
                    child: Text(
                      mydata[0]["1"],
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: "Quando",
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                    child: Column(
                  children: <Widget>[
                    choicebutton('a'),
                    choicebutton('b'),
                    choicebutton('c'),
                    choicebutton('d'),
                  ],
                )),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Center(
                    child: Text(
                      showtimer,
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Timws New Roman',
                      ),
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
}