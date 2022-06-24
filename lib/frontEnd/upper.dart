// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:furniture_ui/Widgets/Colors.dart';
import 'package:furniture_ui/backEnd/trending.dart';

class Upper extends StatefulWidget {
  const Upper({Key? key}) : super(key: key);

  @override
  State<Upper> createState() => _UpperState();
}

class _UpperState extends State<Upper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text("TRENDING PRODUCT"),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 2,
                  color: Colors.black,
                ),
              ),
              Text("See All")
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: info.length,
              itemBuilder: (context, index) {
                trend data = info[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  padding: EdgeInsets.all(10),
                  width: 161,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(children: [
                      /////// image
                      Container(
                        width: 140,
                        height: 110,
                        color: Colors.grey,
                        child: Image(
                          image: AssetImage(data.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      // product name
                      Container(
                        child: Text(
                          data.name,
                        ),
                      ),
                      SizedBox(height: 5),

                      /// size & icon
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$${data.price}",
                            ),
                            Stack(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle, color: secondary),
                                ),
                                Positioned(
                                  left: 3,
                                  bottom: 2,
                                  child: Icon(
                                    Icons.shopping_cart_outlined,
                                    color: primary,
                                    size: 14,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
