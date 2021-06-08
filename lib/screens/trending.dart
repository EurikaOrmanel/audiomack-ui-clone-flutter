import 'package:audiomack_ui_clone/screens/all.dart';
import 'package:audiomack_ui_clone/screens/hip_hop_rap.dart';
import 'package:audiomack_ui_clone/screens/rnb_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrendingScreen extends StatelessWidget {
  const TrendingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: Stack(
            children: [
              TabBar(
                labelColor: Colors.white,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade700),
                tabs: tabs,
                isScrollable: true,
                physics: NeverScrollableScrollPhysics(),
              ),
              Positioned(
                left: 300,
                right: 9,
                bottom: 10,
                child: SizedBox(
                  width: 20,
                  child: Container(
                    height: 30,
                    // color: Colors.black,
                    child: Icon(
                      CupertinoIcons.shuffle,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        backgroundColor: Colors.grey.shade900,
        body: TabBarView(children: tabBarCHildren),
      ),
    );
  }
}

List<Widget> tabBarCHildren = [AllPage(), HipHopPage(), RnBPage()];
List<Tab> tabs = [
  Tab(
    text: 'All Genres',
  ),
  Tab(
    text: 'Hip-Hop',
  ),
  Tab(
    text: 'RnB',
  )
];
