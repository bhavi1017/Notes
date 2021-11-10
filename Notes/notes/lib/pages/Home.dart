import 'package:flutter/material.dart';
import 'package:notes/menu.dart';
import 'package:notes/my_flutter_app.dart';

import 'Add.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 80, 10, 10),
        child: Column(
          children: [
            Align(
              //left: 5,
              alignment: Alignment.topLeft,
              child: Text(
                "Notes",
                //textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black87, fontSize: 50),
              ),
            ),
            Row(
              children: [
                Icon(MyFlutterApp.cloud_off),
                SizedBox(
                  width: 6,
                  height: 50,
                ),
                Text(
                  "Safely store notes in the cloud",
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Enable Cloud Service",
                style: TextStyle(
                  color: Colors.amber[800],
                  fontSize: 17,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 150,
                ),
                Align(
                  child: FlatButton(
                    focusColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, "/search");
                    },
                    child: Icon(Icons.search),
                  ),
                ),
                Align(
                  child: PopupMenuButton(
                    itemBuilder: (BuildContext context) {
                      return menu.items.map(
                        (e) {
                          return PopupMenuItem<String>(
                            value: e,
                            child: Text(e),
                          );
                        },
                      ).toList();
                    },
                    child: Icon(Icons.more_vert),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/add");
        },
        backgroundColor: Colors.amber[800],
        child: Icon(Icons.add),
        focusColor: Colors.amberAccent[50],
      ),
    );
  }
}
