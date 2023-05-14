/* class MultiTable extends StatelessWidget {
  int index = 10;
  @override
  Widget build(BuildContext context) {
    List<Widget> table = [];

    for (var i = 1; i <= index - 1; i++) {
      List<Widget> row = [];
      for (var j = 1; j <= index; j++) {
        row.add(Padding(
          padding: EdgeInsets.all(20.0),
          child: Container(
            child: Text(
              '$i * $j = ${i * j} ',
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ));
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
}  */