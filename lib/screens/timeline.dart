import 'package:audiomack_ui_clone/widgets/music_item_card.dart';
import 'package:flutter/material.dart';

class TimeLineScreen extends StatefulWidget {
  @override
  _TimeLineScreenState createState() => _TimeLineScreenState();
}

class _TimeLineScreenState extends State<TimeLineScreen> {
  bool exClude = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: ListView(
        children: [
          Row(
            children: [
              Spacer(),
              Text(
                'Exclude Re-Ups',
                style: TextStyle(color: Colors.white),
              ),
              Switch(
                  value: exClude,
                  onChanged: (change) {
                    if (exClude == false) {
                      change = true;
                      setState(() {
                        exClude = change;
                      });
                    } else {
                      change = false;
                      setState(() {
                        exClude = change;
                      });
                    }
                  })
            ],
          ),
          MusicCard(
              cover: 'A Boogie Wit Da Hoodie-The Bigger Artist.jpg',
              isDownloaded: false,
              numberOfPlays: 232,
              numberOfLikes: 12,
              artistName: 'A Boogie wit Da Hoodie',
              numberOfrepeats: 12,
              numberOfPlayLists: 19,
              songtitle: 'Drowning'),
          MusicCard(
              isDownloaded: false,
              numberOfPlays: 232,
              numberOfLikes: 12,
              artistName: 'Big Sean',
              numberOfrepeats: 12,
              numberOfPlayLists: 19,
              cover: 'Big Sean-Detroit 2.jpg',
              songtitle: 'Deep Reverence'),
          MusicCard(
              cover: 'Eminem-Infinite.jpg',
              isDownloaded: true,
              numberOfPlays: 232,
              numberOfLikes: 12,
              artistName: 'Eminem',
              numberOfrepeats: 12,
              numberOfPlayLists: 19,
              songtitle: 'Real Slim Shady'),
          MusicCard(
              cover: 'J.Cole-The Off-Season.jpg',
              isDownloaded: false,
              numberOfPlays: 232,
              numberOfLikes: 12,
              artistName: 'J.Cole',
              numberOfrepeats: 12,
              numberOfPlayLists: 19,
              songtitle: 'amari'),
          MusicCard(
              cover: 'Saint Ennel-beauty in the pain.jpeg',
              numberOfPlays: 3,
              numberOfLikes: 2,
              artistName: "Saint Ennel",
              numberOfrepeats: 02,
              numberOfPlayLists: 23,
              isDownloaded: true,
              songtitle: 'Beauty in the pain'),
          MusicCard(
              cover: 'Kodak Black-Dying to live.jpg',
              numberOfPlays: 30,
              numberOfLikes: 223,
              artistName: "Kodak Black",
              numberOfrepeats: 02,
              numberOfPlayLists: 23,
              isDownloaded: true,
              songtitle: 'Testimony'),
        ],
      ),
    );
  }
}
