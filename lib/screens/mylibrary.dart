import 'package:audiomack_ui_clone/screens/favourite.dart';
import 'package:audiomack_ui_clone/screens/followers.dart';
import 'package:audiomack_ui_clone/screens/following.dart';
import 'package:audiomack_ui_clone/screens/notification.dart';
import 'package:audiomack_ui_clone/screens/offline.dart';
import 'package:audiomack_ui_clone/screens/playlists.dart';
import 'package:audiomack_ui_clone/screens/playlists_lib.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLibraryScreen extends StatefulWidget {
  @override
  _MyLibraryScreenState createState() => _MyLibraryScreenState();
}

class _MyLibraryScreenState extends State<MyLibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade900,
          appBar: AppBar(
            backgroundColor: Colors.grey.shade900,
            leading: Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 19,
                      backgroundColor: Colors.red,
                    ),
                    Positioned(
                      top: 12,
                      left: 18,
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            centerTitle: true,
            title: Text(
              'username',
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              IconButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationScreen())),
                  icon: Icon(
                    CupertinoIcons.bell_fill,
                    color: Colors.white,
                  ))
            ],
            bottom: TabBar(
              labelColor: Colors.white,
              tabs: tabs,
              isScrollable: true,
            ),
          ),
          body: TabBarView(children: tabBarChildren),
        ),
      ),
    );
  }
}

List<Widget> tabBarChildren = [
  FavouriteScreen(),
  OfflineScreen(),
  MyLibraryPlayListPage(),
  FollowersScreen(),
  FollowingScreen()
];
List<Tab> tabs = <Tab>[
  Tab(
    child: Text('FAVOURITES'),
  ),
  Tab(
    child: Text('OFFLINE'),
  ),
  Tab(
    child: Text('PLAYLISTS'),
  ),
  Tab(
    child: Text('FOLLOWERS'),
  ),
  Tab(
    child: Text('FOLLOWING'),
  ),
];
