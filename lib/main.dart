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
            mainAxisAlignment: MainAxisAlignment.center,
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
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(color: Colors.teal[100]),
              ),
              TextInfoBox(Icons.phone, '+38 324 890 213'),
              TextInfoBox(Icons.email, 'leorio@knighthood.co'),
            ],
          ),
        ),
      ),
    );
  }
}

class TextInfoBox extends StatelessWidget {
  final IconData _iconData;
  final String _textData;

  TextInfoBox(this._iconData, this._textData);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 25,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: Icon(_iconData, color: Colors.teal),
          title: Text(
            _textData,
            style: TextStyle(
                color: Colors.teal[900], fontFamily: 'Roboto', fontSize: 20),
          ),
        ),
      ),
    );
  }
}
