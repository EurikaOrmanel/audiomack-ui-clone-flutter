import 'package:audiomack_ui_clone/widgets/music_item_card.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MusicCard(
            cover: 'A Boogie Wit Da Hoodie-The Bigger Artist.jpg',
            isDownloaded: true,
            numberOfPlays: 232,
            numberOfLikes: 12,
            artistName: 'A Boogie wit Da Hoodie',
            numberOfrepeats: 12,
            numberOfPlayLists: 19,
            songtitle: 'Drowning'),
        MusicCard(
            isDownloaded: true,
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
            isDownloaded: true,
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
    );
  }
}
