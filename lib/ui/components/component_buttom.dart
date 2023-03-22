import 'package:flutter/material.dart';

class ComponentButtom extends StatelessWidget {
  const ComponentButtom({
    Key? key,
    required this.text,
    required this.onTapComponent,
  }) : super(key: key);

  final String text;
  final void Function()? onTapComponent;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapComponent,
      child: Container(
        width: 220.0,
        height: 60.0,
        margin: const EdgeInsets.only(bottom: 15.0),
        alignment: Alignment.center,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: const LinearGradient(
            colors: [
              Colors.red, 
              Colors.pink, 
            ],
          )
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
