import 'package:flutter/material.dart';

class FollowingCard extends StatefulWidget {
  FollowingCard(
      {Key? key,
      required this.artistName,
      required this.artistDp,
      required this.followed,
      required this.isVerified})
      : super(key: key);
  String artistName;
  String artistDp;
  bool isVerified;
  bool followed;
  @override
  _FollowingCardState createState() => _FollowingCardState();
}

class _FollowingCardState extends State<FollowingCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey.shade800)),
      child: ListTile(
        leading: ClipOval(
          child: CircleAvatar(
            radius: 30,
            child: Image.asset(
              'assets/' + widget.artistDp,
            ),
          ),
        ),
        title: Row(
          children: [
            Text(
              widget.artistName + ' ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
            Icon(
              Icons.check_circle,
              color:
                  widget.isVerified == true ? Colors.orange : Colors.grey[100],
            ),
          ],
        ),
        trailing: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder(
                  side: BorderSide(color: Colors.orange, width: 2))),
              backgroundColor: widget.followed == true
                  ? MaterialStateProperty.all<Color>(Colors.orange)
                  : MaterialStateProperty.all<Color>(Colors.grey.shade800)),
          onPressed: () {
            if (widget.followed == true) {
              setState(() {
                widget.followed = false;
              });
            } else {
              setState(() {
                widget.followed = true;
              });
            }
          },
          child: Text('Following'),
        ),
      ),
    );
  }
}
