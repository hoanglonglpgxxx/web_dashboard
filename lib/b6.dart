//tìm chữ số nhỏ nhất of số nguyên dương n
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class minChar extends StatefulWidget {
  const minChar({super.key});
  @override
  State<StatefulWidget> createState() {
    return _findMinChar();
  }
}

class _findMinChar extends State<minChar> {
  int _input = 0;
  int _theChar = 0;
  final numberEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Find min character',
        home: Scaffold(
          body: Center(
              child: Column(
            children: <Widget>[
              Text('Find min character'),
              Container(
                child: TextField(
                  controller: numberEditingController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    FilteringTextInputFormatter.deny(RegExp(r'^0+')),
                  ],
                  onSubmitted: (text) {
                    setState(() {
                      List<String> characters = List<String>.generate(
                          text.length, (index) => text[index]);
                      int _min = int.parse(characters[0]);
                      characters.forEach((e) {
                        if (int.parse(e) < _min) {
                          _min = int.parse(e);
                        }
                      });
                      _theChar = _min;
                      _input = int.parse(text);
                      numberEditingController.clear();
                    });

                    /*  int _findChar() {
                      setState(() {
                      });
                      return _theChar;
                    } */
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      labelText: 'Enter number:'),
                ),
              ),
              Text(
                'Chữ số nhỏ nhất của số nguyên dương $_input là $_theChar',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              /*  FloatingActionButton(
                onPressed: _findChar,
                child: const Text(
                  'print val',
                  textAlign: TextAlign.center,
                ),
              ), */
            ],
          )),
        ));
  }
}
