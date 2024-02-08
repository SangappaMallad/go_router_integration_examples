import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String username;
  final String userId;
  const Profile({super.key,required this.username, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,),
      body:  Center(child: Text('UserId : $userId \nUserName : $username')),
    );
  }
}