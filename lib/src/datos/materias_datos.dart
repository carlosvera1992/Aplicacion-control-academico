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
        meta: 4.0,
        notaMin: 3.2,
        notas: notas),
    new MateriaModel(
        codigo: '02',
        nombre: 'Lenguaje de programacion III',
        meta: 5.0,
        notaMin: 3.0,
        notas: notas),
    new MateriaModel(
        codigo: '03',
        nombre: 'Algoritmos',
        meta: 3.8,
        notaMin: 3.0,
        notas: notas),
    new MateriaModel(
        codigo: '04',
        nombre: 'Desarrollo Movil',
        meta: 4.9,
        notaMin: 3.0,
        notas: notas),
    new MateriaModel(
        codigo: '05',
        nombre: 'Estadistica Descriptiva',
        meta: 4.6,
        notaMin: 3.1,
        notas: notas),
    new MateriaModel(
        codigo: '06',
        nombre: 'Ingles II',
        meta: 5.0,
        notaMin: 3.0,
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
