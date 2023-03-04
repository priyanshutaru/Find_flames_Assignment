// ignore_for_file: prefer_const_constructors, unused_import

import 'package:assignment/utils/card.dart';
import 'package:assignment/utils/chatcard.dart';
import 'package:assignment/utils/firstcard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  // Container(
                  //   height: 320,
                  //   color: Colors.white,
                  // ),
                  Container(
                    height: 300,
                    color: Colors.pink[100],
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 12,
                                ),
                                child: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 28,
                                ),
                              ),
                              Text(
                                "Find Flames",
                                style:
                                    TextStyle(color: Colors.pink, fontSize: 18),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Icon(Icons.tune_outlined),
                              ),
                            ],
                          ),
                          SizedBox(height: 30,),
                          //  MyCard( name: 'likes', icon: Icons.verified,),
      
                          Container(
                            height: 150,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FirstCardList(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MyCard(
                                    name: 'Tony',
                                    icon: Icons.verified,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MyCard(
                                    name: 'James',
                                    icon: Icons.verified,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MyCard(
                                    name: 'Jordan',
                                    icon: Icons.verified,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MyCard(
                                    name: 'monu',
                                    icon: Icons.verified,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 40,),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12, width: 1),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        MyChatCard(),
                        MyChatCard(),
                        MyChatCard(),
                      ],
                    ),
                  ),
                  // child: Column(
                  //   children: [
                  //     Row(
                  //       children: [
                  //         CircleAvatar(backgroundColor: Colors.red,),
                  //         Column(
                  //           children: [
                  //             Row(
                  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Row(
                  //                   children: [
                  //                     Text("Monu"),
                  //                     Icon(Icons.verified,color: Colors.blue,)
                  //                   ],
                  //                 ),
                  //                 Text("Monu"),
                  //               ],
                  //             ),
                  //             Row(
                  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text("Hii"),
                  //                 CircleAvatar(child: Text("1",style: TextStyle(color: Colors.pink),)),
                  //               ],
                  //             ),
      
                  //           ],
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  // ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 255,
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2),
                      )
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black45,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.pink,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: 3,
        items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.hexagon,),label: "home"),
        
        BottomNavigationBarItem(icon: Icon(Icons.language_sharp),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.edit_calendar),label: "home"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_2,),label: "home"),
        

      ]),
    );
  }
}
