import 'package:flutter/material.dart';

class MyApp4 extends StatelessWidget {
  const MyApp4({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiplation',
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Multiplation Table'.toUpperCase(),
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical, child: _MultiTable()),
              //SingleChildScrollView nhưng không scroll?
            )
          ],
        ),
      ),
    );
  }
}

class _MultiTable extends StatelessWidget {
  int index = 10;

  @override
  Widget build(BuildContext context) {
    List<Widget> table = [];
    for (int i = 1; i <= index; i++) {
      List<Widget> row = [];
      for (int j = 1; j <= index; j++) {
        row.add(Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              child: Text(
                '$i * $j = ${i * j} ',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            )));
      }
      table.add(Column(children: row)); //TODO:  đủ 9 row -> add
    }
    return Container(
        child: Row(
      //TODO:  row các cột
      mainAxisAlignment: MainAxisAlignment.center,
      children: table,
    ));
  }
}
