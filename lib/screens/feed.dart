import 'package:audiomack_ui_clone/screens/following.dart';
import 'package:audiomack_ui_clone/screens/suggested_follows.dart';
import 'package:audiomack_ui_clone/screens/timeline.dart';
import 'package:flutter/material.dart';

class FeedsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Scaffold(
              body: TabBarView(
                children: [
                  TimeLineScreen(),
                  SuggestedFollowsScreen(),
                  FollowingScreen()
                ],
              ),
              appBar: TabBar(
                isScrollable: true,
                tabs: tabs,
              )),
        ));
  }
}

List<Tab> tabs = <Tab>[
  Tab(
    child: Text("TIMELINE"),
  ),
  Tab(
    child: Text("SUGGESTED FOLLOWS"),
  ),
  Tab(
    child: Text("FOLLOWING"),
  ),
];
