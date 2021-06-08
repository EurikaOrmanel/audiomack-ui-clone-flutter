import 'package:flutter/material.dart';

class SuggestedCard extends StatefulWidget {
  SuggestedCard(
      {Key? key,
      required this.genreName,
      required this.followed,
      required this.isVerified})
      : super(key: key);
  String genreName;
  bool isVerified;
  bool followed;
  @override
  _SuggestedCardState createState() => _SuggestedCardState();
}

class _SuggestedCardState extends State<SuggestedCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade800),
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.green,
        ),
        title: Row(
          children: [
            Flexible(
              child: Text(
                widget.genreName,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              width: 2,
            ),
            Icon(
              Icons.check_circle,
              color:
                  widget.isVerified == true ? Colors.orange : Colors.grey[600],
            ),
          ],
        ),
        trailing: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder(
                  side: BorderSide(color: Colors.orange, width: 3))),
              backgroundColor: widget.followed == true
                  ? MaterialStateProperty.all<Color>(Colors.grey.shade800)
                  : MaterialStateProperty.all<Color>(Colors.orange)),
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
