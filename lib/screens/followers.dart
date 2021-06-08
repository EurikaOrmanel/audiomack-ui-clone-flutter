import 'package:flutter/material.dart';

class FollowersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(
            Icons.wifi_off,
            size: 230,
            color: Colors.grey.shade600,
          ),
          Text(
            'Having trouble connecting',
            style: TextStyle(
                fontSize: 19, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          TextButton(
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size.fromHeight(40))),
              onPressed: () => print('Try again'),
              child: Text("Try again"))
        ],
      ),
    );
  }
}
