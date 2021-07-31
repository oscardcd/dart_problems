import 'dart:io';

import 'package:dart_problems/exportfile.dart';

void calculariva(){
   stdout.writeln('¿ingrese un valor para calcular el iva?');
  var valor = double.parse(stdin.readLineSync() ?? '0');

  stdout.writeln('ingrese el pais:');
  var pais= stdin.readLineSync()!.toLowerCase();

  switch(pais){
    case 'colombia': 
            var ivapais =0.19;
            var rta=printiva(valor, pais, ivapais);
            print(rta);
            anhoterproblem();
      break;
    case 'argentina':
            var ivapais =0.20;
            var rta=printiva(valor, pais, ivapais);
            print(rta);
            anhoterproblem();
      break;
    case 'chile':
            var ivapais =0.9;
            var rta=printiva(valor, pais, ivapais);
            print(rta);
            anhoterproblem();
            
      break;
    default:
        print('el pais ingresado no existe');
      break;
  }
}

String printiva(double valor,String pais, double ivapais){
    var iva=valor*ivapais;

    var respuesta='El IVA que se le cobrará en ${pais.toUpperCase()}. ese de $iva con base al total suministrado de $valor.\n';
    return respuesta;

}