
import 'package:controlacademico/src/models/materia_model2.dart';

import '../datos/materias_datos.dart';



class MateriasProvider{



List<MateriaModel> cargarMaterias()   {
 
  return materias;
}

bool insertarMateria(MateriaModel materia){
  bool resp = agregarMateria(materia);

  return resp;
}



}