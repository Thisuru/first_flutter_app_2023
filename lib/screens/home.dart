import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> users = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rest API Call',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rest API Call'),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              final email = user['email'];
          return ListTile(
            title: Text(email),
          );
        }),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchUsers,
        ),
      ),
    );
  }

  //fetch data from get API
  Future<void> fetchUsers() async {
    print('fetchUser called');
    const url = 'https://randomuser.me/api/?results=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final json = jsonDecode(response.body);
    print(json);
    setState(() {
      users = json['results'];
    });
    print('fetchUser completed');
  }
}
