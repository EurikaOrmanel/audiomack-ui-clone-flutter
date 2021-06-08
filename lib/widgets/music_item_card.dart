import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicCard extends StatefulWidget {
  MusicCard(
      {Key? key,
      required this.cover,
      required this.numberOfPlays,
      required this.numberOfLikes,
      required this.artistName,
      required this.numberOfrepeats,
      required this.numberOfPlayLists,
      required this.isDownloaded,
      required this.songtitle})
      : super(key: key);
  final String artistName;
  final String songtitle;
  final int numberOfPlays;
  final int numberOfLikes;
  final int numberOfrepeats;
  final String cover;
  final int numberOfPlayLists;
  bool isDownloaded;
  @override
  _MusicCardState createState() => _MusicCardState();
}

class _MusicCardState extends State<MusicCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade900,
          border: Border.all(width: 0.1, color: Colors.grey.shade400)),
      height: 90,
      // width: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Image.asset(
              'assets/' + widget.cover,
              height: 80,
              width: 80,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                widget.artistName,
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Text(
                widget.songtitle,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.white),
              ),
              SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.play_arrow,
                    size: 20,
                    color: Colors.orange,
                  ),
                  Text(
                    widget.numberOfPlays.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  Icon(CupertinoIcons.heart_fill,
                      size: 20, color: Colors.orange),
                  Text(
                    widget.numberOfLikes.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                  Icon(Icons.repeat, size: 18, color: Colors.orange),
                  Text(
                    widget.numberOfrepeats.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white),
                  ),
                  Icon(Icons.playlist_add, color: Colors.orange),
                  Text(
                    widget.numberOfPlayLists.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              )
            ],
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            child: IconButton(
              icon: widget.isDownloaded == true
                  ? Icon(
                      Icons.check_circle,
                      color: Colors.orange,
                      size: 30,
                    )
                  : Icon(
                      Icons.download_for_offline_outlined,
                      color: Colors.white70,
                      size: 30,
                    ),
              onPressed: () {
                if (widget.isDownloaded == false) {
                  setState(() {
                    widget.isDownloaded = true;
                  });
                } else {
                  setState(() {
                    widget.isDownloaded = false;
                  });
                }
              },
            ),
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
