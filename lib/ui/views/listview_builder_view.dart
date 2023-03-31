import 'package:flutter/material.dart';

class ListviewBuilderView extends StatelessWidget {
const ListviewBuilderView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    List<String> names = ["Gustavo", "Edward", "Hery", "Juan", "Jairo"];
    return Scaffold(
      appBar: AppBar(
        title: Text("ListviewBuilder"),
      ),
      body: ListView.builder(
        itemCount:names.length ,
        itemBuilder: (context, index){
          return Text(names[index]);
        },
      ),
    );
  }
}

