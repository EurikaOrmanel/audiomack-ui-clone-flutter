import 'package:audiomack_ui_clone/screens/afro_beats.dart';
import 'package:audiomack_ui_clone/screens/best_of_month.dart';
import 'package:audiomack_ui_clone/screens/caribbean.dart';
import 'package:audiomack_ui_clone/screens/hip_hop.dart';
import 'package:audiomack_ui_clone/screens/latin.dart';
import 'package:audiomack_ui_clone/screens/rnb.dart';
import 'package:audiomack_ui_clone/screens/verified_series.dart';
import 'package:audiomack_ui_clone/screens/whatsnew.dart';
import 'package:flutter/material.dart';

class PlaylistsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade900,
          body: TabBarView(
            children: tabItemScreens,
          ),
          appBar: PreferredSize(
            child: Container(
              child: Stack(
                children: [
                  TabBar(
                    labelColor: Colors.grey[300],
                    tabs: tabs,
                    isScrollable: true,
                  ),
                  Positioned(
                    child: Material(
                      color: Colors.grey[900],
                      child: IconButton(
                          onPressed: () => print('I have been pressed'),
                          icon: Icon(
                            Icons.sort,
                            color: Colors.grey.shade400,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(32),
          ),
        ),
      ),
    );
  }
}

List<Tab> tabs = <Tab>[
  Tab(
    child: Text("VERIFIED SERIES"),
  ),
  Tab(
    child: Text("WHAT'S NEW"),
  ),
  Tab(
    child: Text("BEST OF: MONTH"),
  ),
  Tab(
    child: Text("HIP-HOP/RAP"),
  ),
  Tab(
    child: Text("AFROBEATS"),
  ),
  Tab(
    child: Text("R&B"),
  ),
  Tab(
    child: Text("LATIN"),
  ),
  Tab(
    child: Text("CARIBBEAN"),
  ),
];

List<Widget> tabItemScreens = <Widget>[
  Verified_SeriesScreen(),
  WhatsNewScreen(),
  BestOfMonth(),
  HipHopScreen(),
  AfroBeatsScreen(),
  R_n_BScreen(),
  LatinScreen(),
  CaribbeanScreen(),
];
