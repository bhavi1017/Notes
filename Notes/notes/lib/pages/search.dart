//import 'package:appbar_textfield/appbar_textfield.dart';
//import 'package:appbar_textfield/appbar_textfield.dart';
import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   // appBar: AppBar(
    //   //   iconTheme: IconThemeData(color: Colors.black, opacity: 0.7),
    //   //   actionsIconTheme: IconThemeData(color: Colors.black, opacity: 0.7),
    //   //   backgroundColor: Colors.white,
    //   //   elevation: 1,
    //   // ),
    //   appBar: AppBarTextField(
    //     backgroundColor: Colors.white,
    //     iconTheme: IconThemeData(color: Colors.black54),
    //     backBtnIcon: Icon(Icons.arrow_back_ios),
    //   ),
    // );
    return MaterialApp(
      theme: ThemeData(backgroundColor: Colors.white24),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.fromLTRB(0, 50, 10, 25),
          child: Row(
            children: [
              FlatButton(
                onPressed: () {},
                child: Icon(Icons.arrow_back_ios),
              ),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  hintText: "Search..",
                  hintStyle: TextStyle(color: Colors.black87),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
