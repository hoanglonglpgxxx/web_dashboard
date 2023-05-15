import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class sumFunc extends StatefulWidget {
  const sumFunc({super.key});
  @override
  State<StatefulWidget> createState() {
    return _sumFunc();
  }
}

class _sumFunc extends State<sumFunc> {
  int _sum = 0;
  int _val = 0;
  bool _isVisible = false;
  final numberEditingController = TextEditingController();
  int _printSum() {
    setState(() {
      _isVisible = true;
      numberEditingController.clear();
    });
    return _sum;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sum intergers',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Sum integers'),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  controller: numberEditingController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onSubmitted: (text) {
                    _sum = 0;
                    _val = int.parse(text);
                    setState(() {
                      for (int i = 0; i <= _val; i++) {
                        _sum += i;
                      }
                    });
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      labelText: 'Enter number:'),
                ),
              ),
              Visibility(
                visible: _isVisible,
                child: Text(
                  'Tổng các số nguyên từ 1 đến $_val là $_sum',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              FloatingActionButton(
                onPressed: _printSum,
                child: const Text(
                  'print val',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
