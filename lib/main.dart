// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:furniture_ui/Widgets/Colors.dart';
import 'package:furniture_ui/frontEnd/lower.dart';
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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    int _currentIndex = 0;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: background),
        height: height - 90,
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            // app bar
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              width: width,
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
            ),
            // search bar ------------
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  width: width - 120,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      fillColor: secondary,
                      filled: true,
                      prefixIcon: Icon(Icons.search),
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
                      color: secondary,
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.filter_alt_outlined,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            // first Slider -----------
            SizedBox(
                width: double.infinity, height: height / 3.9, child: Upper()),
            SizedBox(
              height: 15,
            ),
            // second Slider ----------
            SizedBox(
                width: double.infinity, height: height / 3.3, child: Lower()),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: primary,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState() {
              _currentIndex = index;
            }
          },
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.vertical_shades_closed_rounded), label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                ),
                label: ""),
          ]),
    );
  }
}
