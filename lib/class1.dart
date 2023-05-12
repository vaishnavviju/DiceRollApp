import 'package:flutter/material.dart';
import 'package:app1/text1.dart';
import 'dart:math';
import 'package:app1/rolldice.dart';

var topl = Alignment.topLeft;
var botr = Alignment.bottomRight;

class Class1 extends StatelessWidget {
  const Class1({required this.colors, super.key});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: topl,
          end: botr,
        ),
      ),
      child: const Center(
        child: Dice(),
      ),
    );
  }
}
