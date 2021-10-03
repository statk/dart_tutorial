class _PrivateClass {}

class PublicClass {
  final String _privateField;
  final String publicField;
  PublicClass(this._privateField, this.publicField);
  void publicMethod() {
    print('Printing private field $_privateField');
  }
}

void main() {
  var publicVar = PublicClass("this is private field", "this is public field");
  publicVar.publicMethod();
}
