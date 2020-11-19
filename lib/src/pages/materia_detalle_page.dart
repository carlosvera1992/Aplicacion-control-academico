import 'package:controlacademico/src/models/materia_model2.dart';
import 'package:flutter/material.dart';



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
        
        body: ListView.builder(
          itemCount: materia.notas.length,
          
          itemBuilder: (BuildContext context, int index) {

          return ListTile(
            title: Text(materia.notas[index].porcentaje.toString()),
            subtitle: Text(materia.notas[index].calificacion.toString()),
          );

         },
        ),
      )
    );
  }
}