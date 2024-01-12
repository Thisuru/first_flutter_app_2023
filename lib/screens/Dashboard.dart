import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SaferU'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text.rich(TextSpan(
            text: 'My',
            style: TextStyle(fontSize: 20, color: Colors.green),
            children: [
              TextSpan(
                  text: 'SaferU',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
              TextSpan(
                  text: 'App',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black))
            ])),
      ),
    );
  }
}
