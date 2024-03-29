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
import 'seenickBasic/models/location.dart';
import 'seenickBasic/mocks/mock_location.dart';
/* void main() {
  /* runApp(MyApp2(
          name: 'asd', age: 20) //send argu/params to this by using constructor
      ); */
  runApp(testLib() //send argu/params to this by using constructor
      );
} */

void main() {
  // runApp(MyApp());
  final Location mockLocation = MockLocation.FetchAny();

  runApp(MaterialApp(home: fLession(mockLocation)));
}
