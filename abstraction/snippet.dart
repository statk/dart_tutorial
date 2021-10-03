abstract class AbstractInterface {
  late String someProperty;
  void SomeMethod();
}

abstract class AbstractClass {
  late String someAbstractProperty;
  void AbstractMethod() {
    print('Abstract class someAbstractProperty is $someAbstractProperty');
  }
}

class SomeBehaviour {
  void PrintBehaviour() {
    print('Some print behaviour');
  }
}

class MyClass extends AbstractClass
    with SomeBehaviour
    implements AbstractInterface {
  @override
  String someProperty = 'Some property value';

  @override
  String get someAbstractProperty => 'Some abstract property value';

  @override
  void SomeMethod() {
    print('Some interface methode and some property $someProperty');
  }
}

void main(List<String> args) {
  var myVar = MyClass();
  myVar.SomeMethod();
  myVar.AbstractMethod();
  myVar.PrintBehaviour();
}
