import 'dart:async';
import 'package:flutter/foundation.dart';

void main() async {
  final timer = Stopwatch()..start();
  //var backgroundTask = compute(impactOnEventLoop, false);
  var task_1 = executeInIsolate(false);
  var task_2 = executeInIsolate(false);
  await Future.wait([
    task_1,
    task_2,
    //backgroundTask
  ]);
  print("Executed in ${timer.elapsedMilliseconds} ms");
}

Future executeInIsolate(bool useFix) async {
  final totalTimer = Stopwatch()..start();
  final iterationTimer = Stopwatch()..start();
  final primeList = <int>[];
  for (var i = 0; i < 700000; i++) {
    if (!i.isPrime) continue;
    primeList.add(i);
  }
  print('Stopwatch: ${totalTimer.elapsedMilliseconds} ms');
  print('Number of primes: ${primeList.length}');
  iterationTimer.stop();
  totalTimer.stop();
}

extension IsPrimeX on int {
  bool get isPrime {
    if (this > 1) {
      for (int i = 2; i < this; i++) if (this % i == 0) return false;
      return true;
    } else {
      return false;
    }
  }
}
