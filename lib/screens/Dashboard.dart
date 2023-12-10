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
      body: Image.asset('images/image1.jpg'),
    );
  }
}

int getNumber() {
  Random random = new Random();
  return random.nextInt(10);
}
