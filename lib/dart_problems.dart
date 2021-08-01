import 'dart:io';

import 'package:dart_problems/exportfile.dart';
import 'package:dart_problems/problem4.dart';

Map<int, String> problems = {
  1: 'validar edad',
  2: 'Categoria segun edad',
  3: 'Calcular IVA',
  4: 'Estudiantes',
  5: 'Productos'
};
void optproblems() {
  problems.forEach((key, value) {
    stdout.writeln('$key: $value');
  });

  print('seleccione un problema');
  var problem = int.parse(stdin.readLineSync() ?? '0');

  switch (problem) {
    case 1:
      problem1();
      break;
    case 2:
      problem2();
      break;
      case 3:
      calculariva();
      break;
      case 4:
      notasEstdiantes();
      break;
    default:
      print('no selecciono una opcion valida\n');
      optproblems();
      break;
  }
}