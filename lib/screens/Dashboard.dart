import 'dart:math';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Dashboard'.toUpperCase(),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text.rich(TextSpan(
          text: 'My',
          style: TextStyle(fontSize: 20.0),
          children: [
            TextSpan(
                text: 'Flutter',
                style:
                TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'App',
                style: TextStyle(fontSize: 30.0, color: Colors.blue)),
            TextSpan(
                text: '${getNumber()}',
                style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.normal))
          ],
        )),
      ),
    );
  }
}

int getNumber() {
  Random random = new Random();
  return random.nextInt(10);
}
