library gradientscaffold;

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Material Gradient Scaffold.
class GradientScaffold extends StatelessWidget {
  GradientScaffold({this.scaffold, this.gradient});
  final scaffold;
  final gradient;
  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: gradient == null
                ? LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                        Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                        Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ])
                : gradient,
          ),
          child: scaffold != null ? scaffold : SizedBox.shrink(),
        ),
      ),
    );
  }
}

/// Cupertino Page Gradient Scaffold.
class CupertinoPageGradientScaffold extends StatelessWidget {
  CupertinoPageGradientScaffold({this.scaffold, this.gradient});
  final scaffold;
  final gradient;
  @override
  Widget build(context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: gradient == null
                ? LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                        Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                        Colors.primaries[
                            Random().nextInt(Colors.primaries.length)],
                      ])
                : gradient,
          ),
          child: scaffold != null ? scaffold : SizedBox.shrink(),
        ),
      ),
    );
  }
}
