import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  //Statefulwidget has internal state
  //each StatefulWidget has 2 class
  //* a public class, that extends StatefulWidget
  //* a private class, which is bluid()

/*   String name = '';
  int age = 0;

  MyApp({required this.name, required this.age}); */
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int index = 3;
  bool _isVisible = false;
  final controllers = <TextEditingController>[];
  final List<int> data = [0, 0, 0];
  int _max = 0;
  void _findMax() {
    setState(() {
      _max = data[0];
      _isVisible = true;
      for (var e in data) {
        if (_max < e) {
          _max = e;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'statefulWidget',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: index,
                  itemBuilder: (BuildContext context, int i) {
                    final controller = TextEditingController();
                    return Container(
                      margin:
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: TextField(
                        controller: controller,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        onChanged: (val) {
                          data[i] = int.parse(val);
                        },
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            labelText: 'Nhập số thứ  ${i + 1}'),
                      ),
                    );
                  }),
              Visibility(
                visible: _isVisible,
                child: Text(
                  'max val: $_max',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                  textDirection: TextDirection.ltr,
                ),
              ),
              FloatingActionButton(onPressed: _findMax, child: const Text('output')),
            ],
          ),
        ),
      ),
    );
  }
}

/*  */