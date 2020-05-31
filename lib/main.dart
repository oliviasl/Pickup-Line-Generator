import 'package:flutter/material.dart';

import './textcontrol.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text(
            'Pickup Line Generator',
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              TextControl(),
            ],
          ),
        ),
      ),
    );
  }
}
