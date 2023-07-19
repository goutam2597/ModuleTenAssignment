import 'package:flutter/material.dart';
import 'package:module_ten_profile_assignment/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proile',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const ProfilePage(),
    );
  }
}
