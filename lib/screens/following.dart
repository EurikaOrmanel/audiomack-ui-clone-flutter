import 'package:audiomack_ui_clone/widgets/following_card.dart';
import 'package:flutter/material.dart';

class FollowingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: ListView(
        children: [
          FollowingCard(
              artistName: 'Saint Ennel',
              artistDp: 'Saint Ennel-beauty in the pain.jpeg',
              followed: true,
              isVerified: false),
          FollowingCard(
              artistName: 'Keeny Ice',
              artistDp: 'Keeny Ice.jpeg',
              followed: true,
              isVerified: true),
          FollowingCard(
              artistName: 'Edem',
              artistDp: 'Edem-Ewe people.jpeg',
              followed: true,
              isVerified: true),
        ],
      ),
    );
  }
}
