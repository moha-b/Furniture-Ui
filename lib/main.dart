// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furniture_ui/Widgets/Colors.dart';
import 'package:furniture_ui/frontEnd/upper.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.sort_rounded,
                  color: Colors.black,
                  size: 30,
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Icon(Icons.notifications_none_rounded,
                            color: Colors.black, size: 30),
                        Positioned(
                          top: 4,
                          right: 8,
                          child: ClipOval(
                            child: Container(
                              color: primary,
                              width: 6,
                              height: 6,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                width: MediaQuery.of(context).size.width - 120,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    fillColor: Colors.black,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.search,
                      color: secondary,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 59,
                height: 59,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_alt_outlined,
                      color: secondary,
                    )),
              ),
            ],
          ),
          Upper(),
        ],
      ),
    );
  }
}
