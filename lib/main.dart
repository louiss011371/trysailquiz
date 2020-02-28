// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'customBottomNavigationBarWidget.dart';
//import 'news.dart';
import 'drawerList.dart';
import 'package:http/http.dart' as http;
import 'model/news.dart';
import 'list.dart';
import 'dart:convert';
import 'dart:async';

//import 'package:firebase/firebase.dart' as fb;

void main() => runApp(SampleApp());
var APP_BAR = 'TrySail News';
var WEBSITE_HEADER = 'TrySail News Website';
var VERSION = "2.0";

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: WEBSITE_HEADER,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class GetJsonData extends StatefulWidget {
  @override
  _GetJsonDataState createState() => new _GetJsonDataState();
}

class _GetJsonDataState extends State<GetJsonData> {
  List data;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
          child: new Center(
            // Use future builder and DefaultAssetBundle to load the local JSON file
            child: new FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/json/news.json'),
                builder: (context, snapshot) {
                  List<News> news =
                  parseJson(snapshot.data.toString());
                  return news.isNotEmpty
                      ? new CountyList(news: news)
                      : new Center(child: new CircularProgressIndicator());
                }),
          ),
        ));
  }

  List<News> parseJson(String response) {
    if(response==null){
      return [];
    }
    final parsed =
    json.decode(response.toString()).cast<Map<String, dynamic>>();
    return parsed.map<News>((json) => new News.fromJson(json)).toList();
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new HomeState();
  }
}

class HomeState extends HomePage {
  int followers = 495;
  int following = 644;
  String userName = 'ルイス＠そらちゃん一推し';
  String id = '@HimeMiyaTen';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(APP_BAR + "  " + VERSION)),
        drawer: new Drawer(
          child: new ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              new DrawerHeader(
                padding: EdgeInsets.only(top: 0),
                decoration: new BoxDecoration(color: Colors.blue.shade300),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      new ListTile(
                        dense: true,

                      ),
                      new ListTile(
                        dense: true,
                        title: Text(userName),
                        subtitle: Text(id),
                        trailing: Icon(Icons.arrow_drop_down),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 18, right: 80),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text(following.toString() + 'フォロー'),
                              ),
                              Text(followers.toString() + 'フォロワー'),
                            ],
                            mainAxisAlignment: MainAxisAlignment.start,
                          ))
                    ],
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  DrawerListItem(),
                ],
              )
            ],
          ),
        ),
        body: Center(
          child: GetJsonData(),
        ),
        bottomNavigationBar: CustomBottomNavigationBarWidget(),
      ),
    );
  }
}


