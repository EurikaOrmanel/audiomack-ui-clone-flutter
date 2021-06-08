import 'package:audiomack_ui_clone/widgets/music_item_card.dart';
import 'package:flutter/material.dart';

class AllPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 10,
        ),
        MusicCard(
            cover: 'Joyner Lucas-Evolution.jpg',
            numberOfPlays: 230,
            numberOfLikes: 412,
            artistName: 'Joyner Lucas',
            numberOfrepeats: 23,
            numberOfPlayLists: 12,
            isDownloaded: false,
            songtitle: 'Snitch'),
        MusicCard(
            cover: 'Jack Harlow-That\'s What They All Say.jpg',
            numberOfPlays: 124,
            numberOfLikes: 12,
            artistName: 'Jack Harlow',
            numberOfrepeats: 12,
            numberOfPlayLists: 23,
            isDownloaded: false,
            songtitle: 'Whats poppin'),
        MusicCard(
            cover: 'Kendrick Lamar-Damn.jpg',
            numberOfPlays: 3,
            numberOfLikes: 2,
            artistName: "Kendrick Lamar",
            numberOfrepeats: 02,
            numberOfPlayLists: 23,
            isDownloaded: false,
            songtitle: 'Lust'),
        MusicCard(
            cover: 'Kodak Black-Dying to live.jpg',
            numberOfPlays: 30,
            numberOfLikes: 223,
            artistName: "Kodak Black",
            numberOfrepeats: 02,
            numberOfPlayLists: 23,
            isDownloaded: true,
            songtitle: 'Testimony'),
        MusicCard(
            cover: 'Kodak Black-Haitian Boy Kodak.jpg',
            numberOfPlays: 30,
            numberOfLikes: 223,
            artistName: "Kodak Black",
            numberOfrepeats: 02,
            numberOfPlayLists: 23,
            isDownloaded: false,
            songtitle: 'Maphiosa'),
        MusicCard(
            cover: 'Kweku Smoke-Snoop Forever.jpg',
            numberOfPlays: 30,
            numberOfLikes: 223,
            artistName: "Kweku Smoke",
            numberOfrepeats: 02,
            numberOfPlayLists: 23,
            isDownloaded: true,
            songtitle: 'On this streets'),
      ],
    );
  }
}
