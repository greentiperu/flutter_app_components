import 'package:flutter/material.dart';

class AvatarView extends StatelessWidget {
const AvatarView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4,
        centerTitle: false,
        title: const Text("Gustavo Quino"),
        actions: const [
          Icon(Icons.notification_important),
          SizedBox(width: 10.0),
          CircleAvatar(
            backgroundImage: NetworkImage("https://i.pinimg.com/474x/dc/92/1e/dc921ec2e07f9437dc51f2a10694578d.jpg"),
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          radius: 70.0,
          backgroundImage: AssetImage("assets/images/photo.jpeg"),
        ),
      ),
    );
  }
}