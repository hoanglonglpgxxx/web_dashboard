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


void main() {
  final cat = Cat('a');
  cat.run();
  print(cat.name);
}
