/*Se necesita crear un programa que permita ingresar una lista de estudiantes de 1 a N 
con su nota final (0,0 a 5,0) al finalizar dicho ingreso el programa debe mostrar en pantalla:
• Cuántos pasaron teniendo en cuenta que se pasar con una nota mayor a 3.8.
• Cuantos quedaron para recuperación si la nota esta entre 2.5 a 3.8.
• Cuantos perdieron si la nota está de 0,0 a 2,5. */

import 'dart:io';

import 'package:dart_problems/dart_problems.dart';
import 'package:dart_problems/exportfile.dart';

void notasEstdiantes(){
  var ie='no';

  Map<String,double> studiantes=({});
  do{
    stdout.writeln('ingrese el nombre del studiante:');
    var nestudiante=stdin.readLineSync();

    stdout.writeln('ingrese nota del estudiante:');
    var nota= double.parse(stdin.readLineSync()!);

    studiantes.addAll({'$nestudiante':nota});

    stdout.writeln('quiere ingresar otro estudiante');
    ie=stdin.readLineSync()!.toLowerCase();
  }
  while(ie=='si');
  mostrarEstudiantes(studiantes);
  anhoterproblem();
}

void mostrarEstudiantes(Map estudianes)
{
     var pasaron=0;
     var recuperando=0;
     var perdieron=0;

    estudianes.forEach((nombre, nota) { 
        if(nota>=3.8){pasaron+=1;}
        else if (nota>=2.5){recuperando+=1;}
        else if(nota<2.5){perdieron+=1;}
    });

    print('los estudiantes que pasaron son: $pasaron\n');
    print('los estudiantes que recuperan son: $recuperando\n');
    print('los estudiantes que perdieron son: $perdieron\n');
}