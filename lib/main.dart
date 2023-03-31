import 'package:flutter/material.dart';
import 'package:flutter_app_components/ui/views/Listview_view.dart';
import 'package:flutter_app_components/ui/views/alert_view.dart';
import 'package:flutter_app_components/ui/views/avatar_view.dart';
import 'package:flutter_app_components/ui/views/card_view.dart';
import 'package:flutter_app_components/ui/views/expanded_view.dart';
import 'package:flutter_app_components/ui/views/home_view.dart';
import 'package:flutter_app_components/ui/views/input_view.dart';
import 'package:flutter_app_components/ui/views/listview_builder_view.dart';
import 'package:flutter_app_components/ui/views/stack_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter components',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InputView(),
    );
  }
}