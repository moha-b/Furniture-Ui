import 'package:flutter/material.dart';

class trend{
  String? image;
  String? name;
  String? price;
  trend(
  {
     this.image,
     this.name,
     this.price
  }
  );
}

final List<trend>info=[
  trend(image : "images/trending/1.jpg", name : "Chair", price : "100"),
  trend(image : "images/trending/2.jpg", name : "Chair", price : "100"),
  trend(image : "images/trending/3.jpg", name : "Chair", price : "100"),
  trend(image : "images/trending/4.jpg", name : "Chair", price : "100"),
];