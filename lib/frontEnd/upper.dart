import 'package:flutter/material.dart';
import 'package:furniture_ui/backEnd/trending.dart';

import '../backEnd/trending.dart';

class Upper extends StatefulWidget {
  const Upper({Key? key}) : super(key: key);

  @override
  State<Upper> createState() => _UpperState();
}

class _UpperState extends State<Upper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 200,
      child: Column(
        children: [
          Container(
            child: Row(
              children: [],
            ),
          ),
          Container(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: info.length,
              itemBuilder: (context, index) {
                trend data = info[index];
                return Container(
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage("${data.image}"),
                        fit: BoxFit.cover,
                      )
                    ],
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
