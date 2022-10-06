// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter State Management',
      home: MyHomePage(title: 'Flutter State Management'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Container(
              width: 300,
              height: 300,
              child: Center(
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      if (isPressed) {
                        isPressed = false;
                      } else {
                        isPressed = true;
                      }
                    });
                  },
                  highlightColor: isPressed ? Colors.black : Colors.red,
                  splashColor: isPressed ? Colors.black : Colors.red,
                  icon: isPressed
                      ? Icon(FontAwesomeIcons.solidHeart)
                      : Icon(FontAwesomeIcons.solidHeart),
                  iconSize: 250,
                  color: isPressed ? Colors.red : Colors.black,
                ),
              ))),
    );
  }
}
