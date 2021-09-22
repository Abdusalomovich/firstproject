import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Center",
      home: Header(),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Padding(
          padding: const EdgeInsets.all(120.0),
          child: Text("Pre-bookings"),
        ),
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Text("My pre-booking"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  minimumSize: const Size(380, 40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
