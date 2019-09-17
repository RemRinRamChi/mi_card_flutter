import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/leorio.jpg'),
              ),
              Text(
                'Leorio Paladiknight',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Righteous',
                ),
              ),
              Text(
                'Hunter | Medical Student'.toUpperCase(),
                style: TextStyle(
                  color: Colors.teal[100],
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
