import 'package:flutter/material.dart';

class Text1 extends StatelessWidget {
  const Text1(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
