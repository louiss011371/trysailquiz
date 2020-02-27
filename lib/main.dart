// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'customBottomNavigationBarWidget.dart';
import 'news.dart';
import 'dart:async';

//import 'package:firebase/firebase.dart' as fb;

void main() => runApp(MyApp());

var appTitle = 'TrySail Info';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(debugShowCheckedModeBanner: false, home: new HomePage());
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
  List<String> Titles = [
    '雨宮天「PARADOX」リリースイベント＆スタンプ会',
    '雨宮天 ライブイベントLoppi・HMVにてオフィシャルグッズ事後発売決定！',
    '夏川椎菜　417Pとヒヨコ群の夢',
    '夏川椎菜　初のライブブルーレイ 発売日・仕様決定！',
    '麻倉もも Live Tour 2020 "Agapanthus"',
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(appTitle)),
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
        body: new Container(
          child: new ListView.builder(
              itemBuilder: (_, int index) => GestureDetector(
                  child: NewsList(
                    this.Titles[index],
                  ),
                  onTap: () => print(this.Titles[index])),
              itemCount: Titles.length),
        ),
        bottomNavigationBar: CustomBottomNavigationBarWidget(),
      ),
    );
  }
}

class DrawerListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      children: <Widget>[
        new ListTile(
          leading: Icon(Icons.person),
          title: Text('プロフィール'),
        ),
        new ListTile(
          leading: Icon(Icons.featured_play_list),
          title: Text('リスト'),
        ),
        new ListTile(
          leading: Icon(Icons.bookmark),
          title: Text('ブックマーク'),
        ),
        new ListTile(
          leading: Icon(Icons.show_chart),
          title: Text('モーメント'),
        ),
        new ListTile(
          leading: Icon(Icons.unarchive),
          title: Text('Twitter広告'),
        )
      ],
    );
  }
}

