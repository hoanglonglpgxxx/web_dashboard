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

/* class MultiTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> res = [];

    for (var i = 1; i <= 9; i++) {
      List<Widget> row = [];
      for (var k = 1; k <= i; k++) {
        row.add(Container(
          child: SizedBox(
            child: Text(
              '$k * $i = ${i * k} ',
              style: TextStyle(fontSize: 20),
            ),
          ),
          decoration: BoxDecoration(border: Border.all(color: Colors.green)),
        ));

        //row.add(Text(
        //'$k * $i = ${i * k} ',
        //style: TextStyle(fontSize: 8),
        //));

        row.add(SizedBox(
          width: 10,
        ));
      }

      res.add(Row(children: row));
      res.add(SizedBox(
        height: 20,
      ));
    }

    return Padding(
      padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
      child: Column(
        children: res,
      ),
    );
  }
} */
class MultiTable extends StatelessWidget {
  int index = 10;

  MultiTable({super.key});
  @override
  Widget build(BuildContext context) {
    List<Widget> table = [];
    for (int i = 1; i < index; i++) {
      for (int j = 1; j < index; j++) {
        table.add(Table(
          children: [
            TableRow(children: [
              Container(
                child: Text('$i * $j = ${i * j}'),
              )
            ])
          ],
        ));
      }
    }

    return MaterialApp(
      title: 'statefulWidget',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: table,
          ),
        ),
      ),
    );
  }
}
