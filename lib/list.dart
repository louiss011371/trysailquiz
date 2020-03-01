import 'package:flutter/material.dart';
import 'model/news.dart';

class CountyList extends StatelessWidget {
  final List<News> news;
  CountyList({Key key, this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: news == null ? 0 : news.length,
        itemBuilder: (BuildContext context, int index) {
          return
            new Card(
              child: new Container(
                padding: EdgeInsets.all(8.0),
                    child: new Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[
                      new CircleAvatar(child: new Text(news[index].title[0]),),
                      new Padding(padding: EdgeInsets.only(right: 10.0),),
                        Expanded(
                        child:
                        new Text(
                          // Read the name field value and set it in the Text widget
                          news[index].title,
                          // set some style to text
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: new TextStyle(
                              fontSize: 18, color: Colors.lightBlueAccent),
                        ),
                        ),
                      ],
                    )
              ),
            );
        });
  }
}
