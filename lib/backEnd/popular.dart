import 'package:flutter/material.dart';

class popular{
  String image;
  String name;
  String price;

  popular(
      {
        required this.image,
        required this.name,
        required this.price
      }
      );

  List<popular>info=[
    popular(image : "images/trending/1.jpg", name : "Chair", price : "100"),
    popular(image : "images/trending/2.jpg", name : "Chair", price : "100"),
    popular(image : "images/trending/3.jpg", name : "Chair", price : "100"),
  ];
}