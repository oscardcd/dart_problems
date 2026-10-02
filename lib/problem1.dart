import 'dart:io';

import 'package:dart_problems/utils.dart';

void problem1() {
  var edad = readAge();
  if (edad == 15) {
    stdout.writeln('Usted es menor de edad porque tiene 15 años');
  } else if (edad >= 18) {
    stdout.writeln('Mayor de edad');
  } else {
    stdout.writeln('Menor de edad\n');
  }
  anhoterproblem();
}