import 'package:audiomack_ui_clone/widgets/search_item_card.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Material(
            color: Colors.grey.shade800,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(children: [
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      color: Colors.grey.shade600,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20,
                        ),
                        child: SizedBox(
                          width: 200,
                          child: Material(
                            color: Colors.grey.shade600,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Icon(Icons.search_outlined,
                                    color: Colors.white),
                                Expanded(
                                  child: TextField(
                                    // textAlign: TextAlign.center,
                                    decoration: InputDecoration.collapsed(
                                        hintText: ' Search',
                                        hintStyle: TextStyle(
                                            color: Colors.grey.shade400)),
                                    onChanged: (value) {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        onTap: () => print('Cancel'),
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: Colors.grey.shade300),
                        ))
                  ]),
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.all(5),
          children: [
            SearchItemCard(
                artistName: 'Kelly Stacks',
                cover: 'Kelly Stacks-Numbian Queen.jpeg',
                title: 'Numbian Queen',
                type: 'SONG'),
            SearchItemCard(
                artistName: 'Kelly Stacks',
                cover: 'JJ Gonami-Abi.jpeg',
                title: 'Numbian Queen',
                featured: true,
                featuredArtists: ['Keeny Ice', 'Mawuli YoungGod'],
                type: 'SONG'),
            SearchItemCard(
                artistName: 'Kelly Stacks',
                cover: 'Kelly Stacks-Trip to mars.jpeg',
                title: 'Trip To Mars',
                type: 'SONG'),
            SearchItemCard(
                artistName: 'The Weekend',
                cover: 'The Weekend-After Hours.jpg',
                title: 'After Hours',
                type: 'SONG'),
            SearchItemCard(
                artistName: 'CitiGod',
                cover: 'Citigod-life.jpg',
                title: 'Life',
                type: 'SONG'),
            SearchItemCard(
                artistName: 'Grace Winner',
                cover: 'Grace Winner-you are still God.jpeg',
                title: 'You are still God',
                type: 'SONG'),
            SearchItemCard(
                artistName: 'Saint Ennel',
                cover: 'Saint Ennel-beauty in the pain.jpeg',
                title: 'Beauty In The Pain',
                type: 'SONG'),
            SearchItemCard(
                artistName: 'Medikal',
                cover: 'Medikal-The Truth.jpg',
                title: 'Hustle',
                type: 'SONG'),
          ],
        ),
      ),
    );
  }
}
