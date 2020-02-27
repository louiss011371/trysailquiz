import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  final String title;
  NewsList(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
      child: new Container(
        padding: EdgeInsets.all(8.0), width: 90,
        child: new Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            new CircleAvatar(child: new Text(title[0]),),
            new Padding(padding: EdgeInsets.only(right: 10.0)),
            Expanded(
                child:
                new Text(title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18))
            ),
          ],
        ),
      ),
    );
  }
}