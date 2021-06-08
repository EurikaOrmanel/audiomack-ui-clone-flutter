import 'package:audiomack_ui_clone/widgets/suggested_card.dart';
import 'package:flutter/material.dart';

class SuggestedFollowsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: ListView(
        children: [
          SuggestedCard(
              genreName: 'Audiomack Africa', followed: true, isVerified: true),
          SuggestedCard(
              genreName: 'Audiomack Latin', followed: false, isVerified: true),
          SuggestedCard(
              genreName: 'Audiomack Mexico', followed: false, isVerified: true),
          SuggestedCard(
              genreName: 'Audiomack Electronic',
              followed: false,
              isVerified: true),
        ],
      ),
    );
  }
}
