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
              Text(
                "See All",
                style: TextStyle(color: primary),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: cat.length,
                itemBuilder: (context, index) {
                  Categories data = cat[index];
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 30,
                    width: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: secondary,
                    ),
                    child: Text(
                      data.categories,
                    ),
                  );
                },
              )),
          SizedBox(
            height: 5,
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
                    color: Colors.blueAccent,
                  ),
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
                      SizedBox(
                        height: 3,
                      ),

                      /// price & icon
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$${data.price}",
                            ),
                            SizedBox(
                              width: 20,
                              height: 20,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: secondary),
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
                              ),
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
