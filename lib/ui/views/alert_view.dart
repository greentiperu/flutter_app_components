import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AlertView extends StatelessWidget {
  const AlertView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alerts"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            _showAlertDialog(context);
          },
          child: Text("Show Alert"),
        ),
      ),
    );
  }

  void _showAlertDialog(
    BuildContext context,
  ) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext contextBuilder) {
        if (Platform.isIOS) {
          return CupertinoAlertDialog(
            title: const Text("Success"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                FlutterLogo(
                  size: 100.0,
                ),
                SizedBox(height: 5.0),
                Text("Este es el contenido de mi alerta"),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancelar"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Conforme"),
              )
            ],
          );
        } else {
          return AlertDialog(
            title: const Text("Success"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                FlutterLogo(
                  size: 100.0,
                ),
                SizedBox(height: 5.0),
                Text("Este es el contenido de mi alerta"),
              ],
            ),
            actions: [
              /* Container(
              width: 80.0,
              height: 40.0,
              alignment: Alignment.center,
              //color: Colors.amber,
              child: Text(
                "Cancelar",
                //style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              width: 80.0,
              height: 40.0,
              alignment: Alignment.center,
              color: Colors.blue,
              child: Text(
                "Confirmar",
                style: TextStyle(color: Colors.white),
              ),
            ), */
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancelar"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Conforme"),
              )
            ],
          );
        }
      },
    );
  }
}
