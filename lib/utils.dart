import 'dart:io';

import 'package:dart_problems/exportfile.dart';

int readAge() {
  stdout.writeln('¿Cuál es tu edad?');
  var edad = int.parse(stdin.readLineSync() ?? '0');
  return edad;
}

void anhoterproblem() {
  stdout.writeln('¿desea ejecutar otro problema?');
  var ejec = stdin.readLineSync()?.toUpperCase();
  if (ejec == 'si'.toUpperCase()) {
    optproblems();
  }
}