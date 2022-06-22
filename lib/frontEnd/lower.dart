// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:furniture_ui/backEnd/categories.dart';
import 'package:furniture_ui/backEnd/popular.dart';

import '../Widgets/Colors.dart';

class Lower extends StatefulWidget {
  const Lower({Key? key}) : super(key: key);

  @override
  State<Lower> createState() => _LowerState();
}

class _LowerState extends State<Lower> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text("PRODUCT Categories"),
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
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: cat.length,
                itemBuilder: (context, index) {
                  Categories data = cat[index];
                  return Container(
                    height: 30,
                    child: Text(data.categories),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black,
                    ),
                  );
                },
              )),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: pop.length,
              itemBuilder: (context, index) {
                popular data = pop[index];
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  padding: EdgeInsets.all(10),
                  width: 161,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
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
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    /// size & icon
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$${data.price}",
                            style: TextStyle(color: Colors.white),
                          ),
                          Stack(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
