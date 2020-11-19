import 'package:controlacademico/src/models/materia_model2.dart';
import 'package:controlacademico/src/models/nota_model2.dart';



final List<NotaModel> notas = [
    new NotaModel(porcentaje: 25, calificacion: 3.5),
    new NotaModel(porcentaje: 25, calificacion: 4.5),
    new NotaModel(porcentaje: 30, calificacion: 4.2),
    new NotaModel(porcentaje: 20, calificacion: 4.9)
  ];

  List<MateriaModel> materias = [
   new MateriaModel(
        codigo: '01',
        nombre: 'Matematicas',
        meta: 4.5,
        notaMin: 3.2,
        notas: notas),
    new MateriaModel(
        codigo: '02',
        nombre: 'Sociales',
        meta: 4.5,
        notaMin: 3.2,
        notas: notas),
    new MateriaModel(
        codigo: '03',
        nombre: 'Algoritmos',
        meta: 4.5,
        notaMin: 3.2,
        notas: notas),

 ];

 

bool agregarMateria(MateriaModel materia){
  if(materia == null){
    return false;
  }else{
  materia.notas = [];
  materias.add(materia);
  return true;
  }
}
