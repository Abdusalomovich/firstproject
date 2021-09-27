 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class UsersItem extends StatelessWidget {
final String name ;
final int id ;
UsersItem(this.name, this.id);
  
  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.all(20),
          padding:EdgeInsets.symmetric(horizontal: 15,
          ),
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
            ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 50,backgroundImage: NetworkImage("https://toppng.com/uploads/preview/icons-logos-emojis-user-icon-png-transparent-11563566676e32kbvynug.png"
                    ),
                    ),
                    SizedBox(width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                      children: [Text(
                        name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(
                          width: 20,
                          ),
                          Container(
                            width: 40,
                            height: 20,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.green,
                                Colors.greenAccent,
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                ),
                                borderRadius: BorderRadius.circular(6)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star,color: Colors.amber,
                                    size: 20,
                                    ),
                                    Text("16",
                                    style: TextStyle(color: Colors.white,
                                    fontWeight: FontWeight.w500),
                                    ),
                                    ],
                                    ),
                                  )
                        ],
                        ),
                        Text("ID: 0000$id",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                          ),
                          ),
                        ],
                        )
                    ],
                    ),
                    InkWell(
                      onTap: () {
                        print("HI");
                        },
                        child: Container(
                          width: 60,height: 40,
                          decoration: BoxDecoration(color: Colors.purple,
                          borderRadius: BorderRadius.circular(20),
                           ),
                           child: Icon(
                             Icons.add,
                             color: Colors.white,
                             ),
                           ),
                        )
                    ],
                    ),
        );
  }
}