//tìm chữ số nhỏ nhất of số nguyên dương n
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class isOdd extends StatefulWidget {
  const isOdd({super.key});
  @override
  State<StatefulWidget> createState() {
    return _findisOdd();
  }
}

class _findisOdd extends State<isOdd> {
  int _input = 0;
  int _oddChar = 0;
  final numberEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Find min character',
        home: Scaffold(
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Find min character'),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                      for (int i = 0; i < characters.length; i++) {
                        if (int.parse(characters[i]) % 2 == 0) {
                          _oddChar = 1;
                          break;
                        } else {
                          _oddChar = 0;
                        }
                      }
                      /*  characters.forEach((e) {
                        if (int.parse(e) % 2 == 0) {
                          print(e);
                        }
                      }); */
                      _input = int.parse(text);
                      numberEditingController.clear();
                    });
                  },
                  /* onChanged: (text) {
                    if (text.length == 0) {
                      setState(() {
                        
                      });
                    }
                  }, */
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      labelText: 'Enter number:'),
                ),
              ),
              Text(
                'Số nguyên dương $_input ${_oddChar == 1 ? 'có số chẵn' : 'tất cả chữ số là số lẻ'}',
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
