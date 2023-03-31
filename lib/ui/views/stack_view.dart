import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.65,
              color: Colors.white,
            ),
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(155, 97, 211, 1.0),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0),
              )
            ),
          ),
           
           
           Positioned(
            top: 320.0,
            left: 25.0,
            right: 25.0,
             child: Container(
              width: double.infinity,
              height: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 17.0,
                    spreadRadius: 0.0,
                     color: Color.fromRGBO(155, 97, 211, 1.0),
                  ),
                ],
              ),
             ),
           ),
        ],
      ),
      /* body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.red,
          ),
          Positioned(
            top: 90.0,
            left: 150.0,
            child: Container(
              width: 120.0,
              height: 120.0,
              color: Colors.amber,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.green,
            ),
          ),
        ],
      ), */
    );
  }
}
