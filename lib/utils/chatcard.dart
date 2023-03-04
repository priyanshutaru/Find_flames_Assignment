import 'package:flutter/material.dart';

class MyChatCard extends StatelessWidget {
  const MyChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        GestureDetector(
          // onTap: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => ),
          //   );
          // },
          // ignore: prefer_const_constructors
          child: Card(
            elevation: .5,
            child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blueGrey,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Row(
                      children: [
                        Text(
                          "Jordan",
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.verified,color: Colors.blue[800],size: 15,)
                      ],
                    ),
                    Text(
                      "13:10",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hii",
                      style: TextStyle(color: Colors.black),
                    ),
                     Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink[400],
                      ),
                       child: Center(
                         child: Text(
                          "1",
                          style: TextStyle(color: Colors.white),
                                           ),
                       ),
                     ),
                  ],
                ),
                // trailing: Text("9 :45 am")
                ),
          ),
        )
      ],
    ),

      ],
    );
  }
}