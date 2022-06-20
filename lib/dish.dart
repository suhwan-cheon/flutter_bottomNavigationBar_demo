import 'package:flutter/material.dart';

class dish extends StatefulWidget {
  final String menu;

  const dish({required this.menu});

  @override
  State<dish> createState() => _dishState(menu);
}

class _dishState extends State<dish> {
  final String menu;

  _dishState(this.menu);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Text(
        this.menu,
        style: TextStyle(
          fontSize: 30,
        ),
      )),
    );
  }
}
