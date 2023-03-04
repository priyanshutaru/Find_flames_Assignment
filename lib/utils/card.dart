// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final name;
  final icon;
  const MyCard({super.key, required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 110,
              width: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
            ),
            Container(
              height: 100,
              width: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,
              ),
            ),
            Positioned(
              left: 15,
              top: 95,
              child: Container(
                // width: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(5), right: Radius.circular(5)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                          child: Text(
                            name,
                            style: TextStyle(fontSize: 10),
                          ),),
                      Icon(
                        icon,
                        color: Colors.blue,
                        size: 10,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}


// Icons.verified,color: Colors.blue,size: 10,