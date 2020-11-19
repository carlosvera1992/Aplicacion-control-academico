import 'package:controlacademico/src/datos/materias_datos.dart';

import 'package:controlacademico/src/models/materia_model2.dart';



class MateriasProvider{

MateriasData materiasData = new MateriasData();

List<MateriaModel> materias = new List<MateriaModel>();

List<MateriaModel> cargarMaterias()   {
  materias = materiasData.materiasData();
  return materias;
}

void insertarMateria(MateriaModel materia){
  materias.add(materia);

  // bool resp = materiasData.agregarMateria(materia);
  
  // return resp;
}



}