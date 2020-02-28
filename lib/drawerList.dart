import 'package:flutter/material.dart';

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