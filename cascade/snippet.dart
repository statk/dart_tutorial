class MyClass {
  late int a;
  late int b;
  void setA(x) {
    a = x;
  }

  void setB(y) {
    b = y;
  }

  void showVal() {
    print(this.a);
    print(this.b);
  }
}

class MyExtensionClass {
  final String myProp;
  MyExtensionClass(this.myProp);
}

class MyAnotherClass {
  final int myProp;
  MyAnotherClass(this.myProp);
}

extension MyExtensionName on MyExtensionClass {
  MyAnotherClass toMyAnotherClass() {
    return MyAnotherClass(int.parse(myProp));
  }
}

void main() {
  // Cascade
  MyClass d1 = MyClass();

  print('Dart Cascade Notation');
  // Without Cascade Notation
  d1.setA(20);
  d1.setB(25);
  d1.showVal();
  // With Cascade Notation
  MyClass()
    ..setA(10)
    ..setB(15)
    ..showVal();

  var list = [];
  var subList = [10, 11, 12];
  list = [1, 2, 3, 4, 5, ...subList];
  print(list);

  // Extensions
  var myCl = MyExtensionClass('42');
  print(myCl.toMyAnotherClass().myProp);
}
