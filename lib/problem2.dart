
import 'package:dart_problems/utils.dart';

void problem2() {
  var edad = readAge();

  var categoria;
  if(edad<=0.9)
  {
      categoria='prenatal';
  }else if(edad>1 && edad <=3){
    categoria='bebé';  
  }else if( edad ==4){
    categoria='La categoría según la edad es NIÑO porque tiene 4 años';  
  }else if(edad<=5){
    categoria='niño pequeño';
  }else if(edad<=12){
    categoria='escuela primaria';
  }else if(edad<=18){
    categoria='adolecente';
  }else if(edad<21){
    categoria= 'adulto joven';
  }

  print(categoria);

  
}