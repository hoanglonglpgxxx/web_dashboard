import 'package:flutter/material.dart';

class MyApp4 extends StatelessWidget {
  const MyApp4({super.key});

  //Statefulwidget has internal state
  //each StatefulWidget has 2 class
  //* a public class, that extends StatefulWidget
  //* a private class, which is bluid()

/*   String name = '';
  int age = 0;

  MyApp4({required this.name, required this.age}); */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Container(
                decoration: const BoxDecoration(), child: MultiTable())),
      ),
    );
  }
}

class MultiTable extends StatelessWidget {
  int index = 9;
  @override
  Widget build(BuildContext context) {
    List<Widget> table = [];

    for (var i = 1; i <= index; i++) {
      List<Widget> row = [];
      for (var k = 1; k <= index; k++) {
        row.add(Padding(
          padding: EdgeInsets.all(20.0),
          child: Container(
            child: Text(
              '$i * $k = ${i * k} ',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ));

        //row.add(Text(
        //'$k * $i = ${i * k} ',
        //style: TextStyle(fontSize: 8),
        //));
      }

      table.add(Column(children: row));
    }

    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: table,
          ),
        ]));
  }
} 
/* class MultiTable extends StatelessWidget {
  int index = 10;

  MultiTable({super.key});
  @override
  Widget build(BuildContext context) {
    List<Widget> table = [];
    for (int i = 1; i < index; i++) {
      List<Widget> row = [];

      for (int j = 1; j <= i; j++) {
        row.add(Container(
            child: Container(
          child: Text('$i * $j = ${i * j}'),
        )));
      }
      table.add(Column(children: row));
    }

    /* return MaterialApp(
      title: 'statefulWidget',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: table,
          ),
        ),
      ),
    ); */
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
      child: Column(
        children: table,
      ),
    );
  }
}
 */