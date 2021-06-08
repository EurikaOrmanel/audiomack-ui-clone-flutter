import 'package:flutter/material.dart';

class TopSongsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

var widget = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.search),
    TextField(
      decoration: InputDecoration.collapsed(
        hintText: 'Search',
      ),
    ),
  ],
);
