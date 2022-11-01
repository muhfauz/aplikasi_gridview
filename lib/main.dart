import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Container> myList = List.generate(90, (index) {
    return Container(
      // height: 50,
      // width: 50,
      color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255),
          Random().nextInt(255)),
    );
  });
  // const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid View'),
        ),
        body: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.00,
            mainAxisSpacing: 10.00,
            childAspectRatio: 4 / 4,
          ),
          children: myList,
        ),
      ),
    );
  }
}
