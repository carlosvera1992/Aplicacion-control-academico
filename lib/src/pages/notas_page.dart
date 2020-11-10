import 'package:flutter/material.dart';

class NotasPage extends StatelessWidget {
  const NotasPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notas'),),
       body: ListView(
         children: [
           ListTile(
             title: Text('Hola lista'),
             onTap: (){},
           )
         ],
         
         
       ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ad_units),
        onPressed: (){
         Navigator.pushNamed(context, 'materia');
        },
        
      ),
    );
  }
}