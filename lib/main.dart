import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List colorList = [
      Colors.red,
      Colors.yellow,
      Colors.green,
      Colors.pink,
    ];
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: PageView.builder(
        itemCount: colorList.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Center(
          child: Container(
            color: colorList[index],
          ),
        ),
      ))),
    );
  }
}
