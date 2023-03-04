import 'package:flutter/material.dart';

class FirstCardList extends StatelessWidget {
  const FirstCardList({super.key});

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
              left: 20,
              top: 95,
              child: Container(
                // width: 54,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(5), right: Radius.circular(5)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          "likes",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),),
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 10),
                      //   child: Icon(
                      //     Icons.,
                      //     color: Colors.blue,
                      //     size: 10,
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}