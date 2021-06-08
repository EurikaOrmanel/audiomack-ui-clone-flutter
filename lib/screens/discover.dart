import 'package:audiomack_ui_clone/screens/recently_added.dart';
import 'package:audiomack_ui_clone/screens/top_albums.dart';
import 'package:audiomack_ui_clone/screens/top_songs.dart';
import 'package:audiomack_ui_clone/screens/trending.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  List<Tab> tabs = <Tab>[
    Tab(
      child: Text('TRENDING'),
    ),
    Tab(
      child: Text('TOP SONGS'),
    ),
    Tab(
      child: Text('TOP ALBUMS'),
    ),
    Tab(
      child: Text('RECENTLY ADDED'),
    ),
  ];
  List<Widget> tabBarItemScreens = <Widget>[
    TrendingScreen(),
    TopSongsScreen(),
    TopAlbumsScreen(),
    RecentlyAddedScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade900,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Container(
              color: Colors.white,
              child: TabBar(
                isScrollable: true,
                tabs: tabs,
                unselectedLabelColor: Colors.grey.shade400,
                labelColor: Colors.black,
              ),
            ),
          ),
          body: TabBarView(children: tabBarItemScreens),
        ),
      ),
    );
  }
}
