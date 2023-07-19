import 'package:flutter/material.dart';
import 'package:module_ten_profile_assignment/profile_body.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: ProfileBody(),
    );
  }
}
