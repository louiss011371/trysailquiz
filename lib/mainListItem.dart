import 'package:flutter/material.dart';

class MainListItem extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     // TODO: implement build
     return new Column(
       children: <Widget>[
         Image.asset('assets/images/momo_onepiece.jpg'),
         Text(
           'Momo',
           style: TextStyle(fontSize: 28, color: Colors.pink.shade100),
         ),
         Image.asset('assets/images/sora_paradox.jpg'),
         Text(
           'Sora',
           style: TextStyle(fontSize: 28, color: Colors.blue.shade300),
         ),
         Image.asset('assets/images/shiina_game.jpg'),
         Text(
           'Shiina',
           style: TextStyle(fontSize: 28, color: Colors.yellow),
         )
       ],
     );
   }
 }