import 'package:audiomack_ui_clone/screens/discover.dart';
import 'package:audiomack_ui_clone/screens/feed.dart';
import 'package:audiomack_ui_clone/screens/mylibrary.dart';
import 'package:audiomack_ui_clone/screens/playlists.dart';
import 'package:audiomack_ui_clone/screens/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 2;
  void changeTab(value) {
    setState(() {
      currentIndex = value;
    });
  }

  void _show(BuildContext ctx) {
    showModalBottomSheet(
        elevation: 10,
        backgroundColor: Colors.amber,
        context: ctx,
        builder: (ctx) => Container(
              height: 900,
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/J.Cole-The Off-Season.jpg',
                        height: 96.0,
                        width: 96.0,
                      ),
                      Column(
                        children: [
                          Text('J.Cole'),
                          Text(
                            'amari',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text('Added by'),
                              Text(
                                'J.Cole',
                                style: TextStyle(color: Colors.orange),
                              ),
                              Positioned(
                                  child: Icon(Icons.info_outline_rounded))
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Icon(CupertinoIcons.heart),
                              Text('Favourite'),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.playlist_add),
                              Text('Playlist'),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.repeat),
                              Text('Re-Up'),
                            ],
                          ),
                          Column(
                            children: [
                              Stack(
                                children: [
                                  Icon(CupertinoIcons.chat_bubble_fill),
                                  Positioned(
                                    child: Container(
                                      child: Text('23'),
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ),
                                ],
                              ),
                              Text('Comments'),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.download_done,
                                color: songIsPlaying == true
                                    ? Colors.grey
                                    : Colors.orange,
                              ),
                              Text('Download'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_upward),
                    title: Text('Play Next'),
                  ),
                  ListTile(
                    title: Text('Add to Queue'),
                    leading: Icon(Icons.queue_play_next),
                  ),
                  ListTile(
                    leading: Icon(Icons.close),
                    title: Text('Remove from downloads'),
                  ),
                  ListTile(
                    title: Text('More from Roddy Ricch'),
                    leading: Icon(Icons.music_note_outlined),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: ListTile(
                      title: Text('Cancel'),
                    ),
                  ),
                ],
              ),
            ));
  }

  List<Widget> screens = <Widget>[
    FeedsScreen(),
    PlaylistsScreen(),
    DiscoverScreen(),
    SearchScreen(),
    MyLibraryScreen()
  ];
  bool songIsPlaying = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      bottomNavigationBar: BottomNavigationBar(
        //  backgroundColor: Colors.grey.shade800,
        type: BottomNavigationBarType.fixed,
        items: bottomBarItems, unselectedItemColor: Colors.grey.shade400,
        currentIndex: currentIndex,
        onTap: changeTab,
      ),
      body: screens[currentIndex],
      persistentFooterButtons: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/J.Cole-The Off-Season.jpg',
              height: 50,
              width: 50,
            ),
            SizedBox(
              width: 10,
            ),
            Align(
              child: Column(
                children: [
                  Text(
                    "J.Cole",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "amari",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            IconButton(
              padding: EdgeInsets.all(2),
              onPressed: () {
                if (songIsPlaying == false) {
                  setState(() {
                    songIsPlaying = true;
                  });
                } else {
                  setState(() {
                    songIsPlaying = false;
                  });
                }
              },
              icon: songIsPlaying == true
                  ? Icon(
                      Icons.pause_circle_outline_outlined,
                      size: 40,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.play_circle_outline_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
              ),
              onPressed: () => _show,
            ),
          ],
        ),
      ],
    );
  }
}

List<BottomNavigationBarItem> bottomBarItems = <BottomNavigationBarItem>[
  BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.music_albums_fill), label: 'Feed'),
  BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.music_note_list), label: 'Playlists'),
  BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.flame_fill), label: 'Discover'),
  BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
  BottomNavigationBarItem(icon: Icon(Icons.album), label: 'My Library'),
];
