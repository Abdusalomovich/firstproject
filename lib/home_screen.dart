import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(backgroundColor: Colors.blueGrey),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text("MY BOOKINGS"),
                ),
                Tab(
                  child: Text("MY PRE-BOOKINGS"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: new Card(
                  child: Text("List is empty No items to disply"),
                ),
              ),
              Center(
                child: new Card(
                  child: Text("List is empty No items to disply"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
