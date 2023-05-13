import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//define own widget
/* class MyApp extends StatelessWidget {
  String name = '';
  int age = 0;

  MyApp({required this.name, required this.age});
  @override
  Widget build(BuildContext context) {
    //build: abstract method from StatelessWidget
    return MaterialApp(
      title: 'first',
      home: Scaffold(
        body: Center(
          child: Text(
            'name: $name, age: $age',
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
 */
class MyApp2 extends StatefulWidget {
  //Statefulwidget has internal state
  //each StatefulWidget has 2 class
  //* a public class, that extends StatefulWidget
  //* a private class, which is bluid()

  String name = '';
  int age = 0;

  MyApp2({required this.name, required this.age});
  @override
  State<StatefulWidget> createState() {
    return _MyApp2State();
  }
}

class _MyApp2State extends State<MyApp2> {
  int _age = 0;
  int _number = 0;
  bool _isVisible = false;
  bool _isVisible2 = false;
  final ageEditingController = TextEditingController();
  final numberEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'statefulWidget',
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                //get val from textField
                controller: ageEditingController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                onSubmitted: (text) {
                  setState(() {
                    _age = int.parse(text);
                    _isVisible = true;
                    //state changed => build() -> rerun -> reload widget
                  });
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: 'enter age'),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                //get val from textField
                controller: numberEditingController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                onSubmitted: (text2) {
                  setState(() {
                    _number = int.parse(text2);
                    _isVisible2 = true;

                    //state changed => build() -> rerun -> reload widget
                  });
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    labelText: 'nhập số nguyên'),
              ),
            ),
            Visibility(
              visible: _isVisible,
              child: Text(
                _age <= 100
                    ? 'Tuổi hiện tại: ${_age} còn ${100 - _age} năm tới 100 tuổi'
                    : 'Tuổi nhập vào ${_age}, vượt quá 100',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
                textDirection: TextDirection.ltr,
              ),
            ),
            Visibility(
              visible: _isVisible2,
              child: Text(
                _number % 2 == 0 ? 'số chẵn' : 'số lẻ',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
                textDirection: TextDirection.ltr,
              ),
            )
          ],
        )),
      ),
    );
  }
}
