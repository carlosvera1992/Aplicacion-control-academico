import 'package:controlacademico/src/pages/materias_page.dart';
import 'package:controlacademico/src/pages/notas_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return DefaultTabController(
        length: _generarTabsBar().length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Control Académico',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
            backgroundColor: Colors.indigo,
            bottom: TabBar(
              tabs: _generarTabsBar(),
            ),
            actions: [
              IconButton(
               icon: Icon( Icons.search, size: 30.0 ),
               onPressed: () => print('Hola busqueda')
              )
            ],
          ),
          body: TabBarView(
            children: [
              NotasPage(), 
              MateriasPage()
            ]
          ),
        )
      );
  }








  List<Widget> _generarTabsBar() {
    return [
      Tab(
        icon: Icon(Icons.book, size: 28.0 ),
        child: Text('Notas', style: TextStyle(fontSize: 18.0)),
      ),
      Tab(
        icon: Icon(Icons.border_color, size: 28.0),
        child: Text('Materias', style: TextStyle(fontSize: 18.0)),
      ),
      
    ];
  }
}
