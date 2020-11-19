import 'package:controlacademico/src/models/materia_model2.dart';
import 'package:controlacademico/src/providers/materias_provides.dart';
import 'package:flutter/material.dart';

class NotasPage extends StatefulWidget {
  NotasPage({Key key}) : super(key: key);

  @override
  _NotasPageState createState() => _NotasPageState();
}

class _NotasPageState extends State<NotasPage> {
  MateriasProvider materiasProvider = new MateriasProvider();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    List<MateriaModel> materias =  materiasProvider.cargarMaterias();
    print('tamaño de la litsa ${materias.length}');
    return ListView.builder(
      itemCount: materias.length,
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          leading: Icon(Icons.book),
          title: Text(materias[index].codigo),
          subtitle: Text(materias[index].nombre),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){
            Navigator.pushNamed(context, 'detalles', arguments: materias[index]);
          },
        );
      } 
    );
    
  }
}
