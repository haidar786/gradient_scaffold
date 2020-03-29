![image](https://drive.google.com/uc?export=view&id=1_-6x4-BnzSiK1b6k1RXmjUgnpYgz-T3R)

```
import 'package:flutter/material.dart';
import 'package:gradientscaffold/gradientscaffold.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: GradientScaffold(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.red, Colors.purple]),
        scaffold: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            title: Text("Gradient Screen"),
          ),
          body: Center(
            child: Text("Hello Gradient World"),
          ),
        ),
      ),
    );
  }
}
```