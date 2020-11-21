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
        return Column(
          children: [
            ListTile(
              leading: Icon(Icons.menu_book, color: Colors.deepPurple),
              title: Text(materias[index].codigo,
                style: TextStyle(fontSize: 20.0),
              ),
              subtitle: Text(materias[index].nombre,
                style: TextStyle(fontSize: 18.0)
              ),
              trailing: Icon(Icons.keyboard_arrow_right,),
              onTap: (){
                Navigator.pushNamed(context, 'detalles', arguments: materias[index]);
              },
            ),
            _calcularNota(materias[index]),
             Divider(height: 10.0, color: Colors.black,),
          ],
        );
      } 
    );
    
  }
   Widget _calcularNota( MateriaModel materia){
    double notaF = 0.0;
    materia.notas.forEach((nota) {
      notaF += (nota.calificacion * nota.porcentaje)/100;
    });
    return Container(
      child: Text('Nota Parcial $notaF', style: TextStyle(fontWeight: FontWeight.bold),),
    );
    
  }
}
