import 'package:flutter/material.dart';
import 'kf_drawer.dart';

class MyHomePage extends KFDrawerContent {
  MyHomePage({Key? key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: widget.onMenuPressed,
        ),
      ),
      body: Center(),

    );}
}