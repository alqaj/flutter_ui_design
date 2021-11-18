// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'widget/card_profile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      body: Container(
        child: const CardProfileWidget()
      ),
    );
  }

  
}

