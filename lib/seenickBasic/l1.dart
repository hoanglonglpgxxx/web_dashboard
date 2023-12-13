import 'package:flutter/material.dart';

class fLession extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Test'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrange[200],
                ),
                child: Text('One'),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.red[200],
                ),
                child: Text('Two'),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.green[200],
                ),
                child: Text('Three'),
              ),
            ],
          ),
        ));
  }
}
//container aka "div" of flutter
//fundamentals of Layout in flutter
//! child is widget inside container
//children: array of containers or sthing else?
//statelesswidget: no keep track of any values