import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(55),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border(
                    bottom: BorderSide(color: Colors.grey.shade600, width: 2))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 90,
                ),
                Text(
                  'NOTIFICATION',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Spacer(),
                CloseButton(
                  color: Colors.white,
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Icon(
                Icons.wifi_off,
                size: 230,
                color: Colors.grey.shade600,
              ),
              Text(
                'Having trouble connecting',
                style: TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              TextButton(
                  style: ButtonStyle(
                      fixedSize:
                          MaterialStateProperty.all(Size.fromHeight(40))),
                  onPressed: () => print('Try again'),
                  child: Text("Try again"))
            ],
          ),
        ),
      ),
    );
  }
}
