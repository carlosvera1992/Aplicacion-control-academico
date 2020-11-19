import 'package:controlacademico/src/pages/home_page.dart';
import 'package:controlacademico/src/pages/materia_detalle_page.dart';
import 'package:controlacademico/src/pages/materias_page.dart';
import 'package:controlacademico/src/pages/notas_page.dart';
import 'package:flutter/material.dart';

 
void main() {
  runApp(MyApp());
} 
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple
      ),
      debugShowCheckedModeBanner: false,
      title: 'Control Academico',
      initialRoute: 'home',
      routes: {
        'notas'   : (BuildContext context ) => NotasPage(),
        'home'    : (BuildContext context ) => HomePage(),
        'materia' : (BuildContext context ) => MateriasPage(),
        'detalles' : (BuildContext context ) => MateriaDetallePage(),
      },
    );
  }
}