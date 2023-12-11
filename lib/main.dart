/* 
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Styling Demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
          ),
        ),
      ],
    );
  }
}
 */

import 'dart:html';
import 'package:flutter/material.dart';
import 'b4.dart';
import 'b5.dart';
import 'b6.dart';
import 'b7.dart';
import 'stream_async_await.dart';
import 'test_lib.dart';
import 'firstApp.dart';
import 'seenickBasic/l1.dart';

/* void main() {
  /* runApp(MyApp2(
          name: 'asd', age: 20) //send argu/params to this by using constructor
      ); */
  runApp(testLib() //send argu/params to this by using constructor
      );
} */

void main() {
  // runApp(MyApp());
  runApp(fLession());
}
