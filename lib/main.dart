import 'package:flutter/material.dart';
import 'package:app1/class1.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(body: Class1(colors: [Colors.amber, Colors.blue])),
    ),
  );
}
