import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLibraryPlayListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Icon(
          CupertinoIcons.music_note_list,
          size: 160,
          color: Colors.grey.shade600,
        ),
        Text(
          "You haven't created any playlists yet",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
