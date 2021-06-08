import 'package:flutter/material.dart';

class SearchItemCard extends StatelessWidget {
  SearchItemCard(
      {Key? key,
      required this.artistName,
      this.featured,
      required this.cover,
      required this.title,
      required this.type,
      this.featuredArtists})
      : super(key: key);
  String type;
  String artistName;
  String title;
  String cover;
  List<String>? featuredArtists;

  ///featured artists is false by default.
  ///turn on to enable the fourth text area
  bool? featured;

  ///this field will be enabled when featured is set to true

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(color: Colors.grey.shade700))),
      child: Row(
        children: [
          SizedBox(
            width: 5,
          ),
          Image.asset(
            'assets/' + cover,
            height: 80,
            width: 80,
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  type,
                  style: TextStyle(
                      color: Colors.orange, fontWeight: FontWeight.bold),
                ),
                Text(
                  artistName,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: featured == true
                      ? [
                          Text(
                            'Feat.  ',
                            style: TextStyle(color: Colors.grey.shade200),
                          ),
                          Text(
                            featuredArtists!.join(',').toString(),
                            style: TextStyle(color: Colors.orange),
                            overflow: TextOverflow.fade,
                          )
                        ]
                      : [Text(' ')],
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios_sharp,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
