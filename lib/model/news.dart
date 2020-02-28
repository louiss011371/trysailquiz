import 'package:flutter/material.dart';

class News {
  final int id;
  final String title;
  final String color;

  News({this.id,this.title, this.color});

  factory News.fromJson(Map<String, dynamic> json) {
    return new News(
      id : json['id']as int,
      title: json['title'] as String,
      color: json['color'] as String,
    );
  }
}