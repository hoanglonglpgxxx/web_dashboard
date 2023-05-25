class Cat {
  final String name;
  Cat(this.name);
}

extension Run on Cat {
  //extend class Cat = 1 func
  void run() {
    print('cat $name is running');
  }
}

/**
 * future: data to be returned in the future
 */

Future<int> multipleByTwo(int a) {
  return Future.delayed(Duration(seconds: 3), () => a * 2);
}

extension Run2 on Cat {
  //use a getter
  String get catName => 'cat name is $name';
}

void main() async {
  final res = await multipleByTwo(20);
  print(res);
  final cat = Cat('a');
  cat.run();
  print(cat.name);
  print(cat.catName);
}
