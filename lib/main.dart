import 'package:audiomack_ui_clone/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    theme: ThemeData(
        textTheme: TextTheme(button: TextStyle(color: Colors.white10)),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder(
                  side: BorderSide(color: Colors.orange, width: 3))),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)),
        ),
        backgroundColor: Colors.grey.shade900,
        primarySwatch: Colors.orange,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            unselectedLabelStyle: TextStyle(color: Colors.grey.shade400),
            showUnselectedLabels: true,
            // unselectedIconTheme: IconThemeData(color: Colors.grey.shade300),
            selectedItemColor: Colors.orange,
            backgroundColor: Colors.grey.shade900),
        tabBarTheme: TabBarTheme(
          unselectedLabelColor: Colors.grey.shade400,
        )),
  ));
}
