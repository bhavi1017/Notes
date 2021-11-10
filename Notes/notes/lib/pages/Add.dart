import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        titleSpacing: 4,
        iconTheme: IconThemeData(color: Colors.black87, opacity: 0.5),
        actionsIconTheme: IconThemeData(color: Colors.black87, opacity: 0.5),
        // actions: [
        //   if () {

        //   } else {
        //   }
        // ],
      ),
      bottomNavigationBar: DefaultTabController(
        length: 4,
        child: TabBar(
          indicatorColor: Colors.white54,
          labelColor: Colors.black,
          tabs: [
            Tab(icon: Icon(Icons.crop_square)),
            Tab(
              child: Container(
                height: 13,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Tab(icon: Icon(Icons.photo_album_outlined)),
            Tab(icon: Icon(Icons.photo_camera)),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 25, 15, 7),
        child: Column(
          children: [
            TextField(
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                hintText: "Title",
                hintStyle: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
              maxLines: 8,
              decoration: InputDecoration(
                hintText: "Content",
                hintStyle: TextStyle(fontSize: 18, color: Colors.grey[600]),
                border: InputBorder.none,
              ),
            ),
            //padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
            // Stack(
            //   children: [
            //     Positioned(
            //       //top: 20,
            //       child: DefaultTabController(
            //         child: TabBar(
            //           indicatorColor: Colors.white54,
            //           labelColor: Colors.black,
            //           tabs: [
            //             Tab(icon: Icon(Icons.crop_square)),
            //             Tab(icon: Icon(Icons.directions_bike)),
            //             Tab(icon: Icon(Icons.directions_bike)),
            //           ],
            //         ),
            //         length: 3,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
