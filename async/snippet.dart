void main(List<String> args) async {
  await _SimpleAsyncMethod();
  await _ReturnFutureMethod();

  var toto = [1, 2, 4, 5];
  for (var item in toto) {
    print(item);
  }
}

Future<void> _SimpleAsyncMethod() async {
  print('This method will display message in 3 seconds');
  await Future.delayed(Duration(seconds: 3));
  print('Hey, this is print message');
}

Future<void> _ReturnFutureMethod() {
  print('This method returns a future value');
  return Future.delayed(Duration(seconds: 3));
}
