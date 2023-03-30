import 'package:flutter/material.dart';

class ListviewView extends StatelessWidget {
  const ListviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: Container(
        width: double.infinity,
        height: 440.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 320.0,
              margin: EdgeInsets.only(left: 15.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                    image: AssetImage("assets/images/perrito.png"),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: 320.0,
              margin: EdgeInsets.only(left: 15.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: AssetImage("assets/images/photo.jpeg"),
                  fit: BoxFit.cover
                ),
              ),
            ),
          ],
        ),
      ),
      /* body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15.0),
            child: CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage("assets/images/photo.jpeg"),
            ),
          ),
           Container(
            margin: EdgeInsets.only(left: 15.0),
            child: CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage("assets/images/photo.jpeg"),
            ),
          ),
           Container(
            margin: EdgeInsets.only(left: 15.0),
            child: CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage("assets/images/photo.jpeg"),
            ),
          ),
           Container(
            margin: EdgeInsets.only(left: 15.0),
            child: CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage("assets/images/photo.jpeg"),
            ),
          ),
           Container(
            margin: EdgeInsets.only(left: 15.0),
            child: CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage("assets/images/photo.jpeg"),
            ),
          ),
           Container(
            margin: EdgeInsets.only(left: 15.0),
            child: CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage("assets/images/photo.jpeg"),
            ),
          ),
        ],
      ), */
    );
  }
}
