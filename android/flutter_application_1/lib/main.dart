


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/user_item.dart';

void main() {
  runApp(MyApp());
 }

 class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Users(),
    );
  }
  }

class Users extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(title: Text("FOYDALANUVCHI"),
      ),
      body: Column(
        children: [
          UsersItem("Aziz",00000011),
          UsersItem("Farhod",00122211),
          UsersItem("Sanjar",00222200),
          UsersItem("OYBEK",00172200),
        ],
        
        ),
      );
    
  }
}
 