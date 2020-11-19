import 'package:controlacademico/src/models/materia_model2.dart';
import 'package:flutter/material.dart';

import '../models/materia_model2.dart';



class MateriaDetallePage extends StatelessWidget {
  const MateriaDetallePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final MateriaModel materia = ModalRoute.of(context).settings.arguments; 

    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(materia.nombre, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        
        body: _mostrarNotas(materia)
      )
    );
    
  }
  Widget _mostrarNotas(MateriaModel materia){

    if( materia.notas.isEmpty ){
      return Center(
        child: Container(
          height: 300,
          width: 300.0,
          decoration: BoxDecoration(
            color: Colors.deepPurple
          ),
          child: Center(
            child: Text('Asignatura sin calificaciones',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),),
          ),
        ),
      );
    }else{
      return ListView.builder(
          itemCount: materia.notas.length,
          itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(materia.notas[index].porcentaje.toString()),
            subtitle: Text(materia.notas[index].calificacion.toString()),
          );

         },
        );
    }
  }
  
}