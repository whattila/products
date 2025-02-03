import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      ),
      // Sets the content to the
      // center of the application page
      body: const Center(
        // Sets the content of the Application
          child: Text(
            'Profile page',
          )),
    );
  }
}