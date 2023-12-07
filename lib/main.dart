import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "My Flutter App",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'.toUpperCase()),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text(
            'Hello World',
            textDirection: TextDirection.ltr,
          ),
        ),
      )));
}
