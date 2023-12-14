import 'package:flutter/material.dart';

class fLession extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Hello, World!")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _section("One!", Colors.red),
            _section("Two!", Colors.green),
            _section("Three!", Colors.blue),
          ],
        ));
  }

  Widget _section(String title, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      child: Text(title),
    );
  }
}
//container aka "div" of flutter
//fundamentals of Layout in flutter
//! child is widget inside container
//children: array of containers or sthing else?
//statelesswidget: no keep track of any values
//final is cant refined again