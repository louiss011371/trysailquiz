import 'package:flutter/material.dart';

 class RowItem extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     // TODO: implement build
     return Column(
       children: <Widget>[
         Container(
           padding: EdgeInsets.all(20),
         child: new Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               new Image.asset('assets/images/momo_onepiece.jpg',
                   width: 100, height: 100, fit: BoxFit.cover),
               new Image.asset('assets/images/momo_onepiece.jpg',
                   width: 100, height: 100, fit: BoxFit.cover),
               new Image.asset('assets/images/momo_onepiece.jpg',
                   width: 100, height: 100, fit: BoxFit.cover),
             ],
           ),

         ),
         Container(
           padding: EdgeInsets.all(20),
           child: new Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               new Image.asset('assets/images/sora_paradox.jpg',
                   width: 100, height: 100, fit: BoxFit.cover),
               new Image.asset('assets/images/sora_paradox.jpg',
                   width: 100, height: 100, fit: BoxFit.cover),
               new Image.asset('assets/images/sora_paradox.jpg',
                   width: 100, height: 100, fit: BoxFit.cover),
             ],
           ),
         ),
       ],
     );
   }
 }