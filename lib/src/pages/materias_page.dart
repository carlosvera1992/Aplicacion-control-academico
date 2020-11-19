
import 'package:controlacademico/src/models/materia_model2.dart';
import 'package:controlacademico/src/providers/materias_provides.dart';
import 'package:controlacademico/src/utils/utils.dart' as utils;
import 'package:flutter/material.dart';

class MateriasPage extends StatefulWidget {
  const MateriasPage({Key key}) : super(key: key);

  @override
  _MateriasPageState createState() => _MateriasPageState();
}

class _MateriasPageState extends State<MateriasPage> {
  final _divider = SizedBox(height: 34.0);

  final _formKey = GlobalKey<FormState>();

  final materiasProvides = new MateriasProvider();

  MateriaModel materia = new MateriaModel();

  double _currentSliderValue = 1.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
         padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldCode(),
              _divider,
              _fieldName(),
              _divider,
              _fieldObjetive(),
              _divider,
              _fielMinCalification(),
              _divider,
              _buttons(),
              SizedBox(height: 25.0)
            ],
          ),
        ),
      ),
    );
  }

  Widget _fieldCode() {
    return TextFormField(
      initialValue:materia.codigo,//mapeo con el modelo
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        filled: true,
        icon: Icon(Icons.qr_code_outlined),
        hintText: 'Código de la materia',
        labelText: 'Código',
      ),
      onSaved: (value) => materia.codigo = value,
      validator: (value) {
        if (value.isEmpty) {
          return 'Debe llenar este campo';
        }
        return null;
      },
    );
  }

  Widget _fieldName() {
    return TextFormField(
      initialValue:materia.nombre,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        filled: true,
        icon: Icon(Icons.people),
        hintText: 'Nombre',
        labelText: 'Nombre de la materia',
      ),
      onSaved: (value) => materia.nombre = value,
      validator: (value) {
        if (value.isEmpty) {
          return 'Debe llenar este campo';
        }
        return null;
      },
    );
  }

  Widget _fieldObjetive() {
    return TextFormField(
      initialValue:materia.meta.toString(),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          filled: true,
          labelText: 'Meta para la materia',
          prefixText: '',
          suffixText: '3.0',
          icon: Icon(Icons.done),
          hintText: 'Meta',
          suffixStyle: TextStyle(color: Colors.green)
      ),
      onSaved: (value) => materia.meta = double.parse(value),
      validator: (value) {

        if( utils.isNumeric(value)){
          return null;
        }else { 
          return 'Sólo Números';
        }
      },
    );
  }

  Widget _fielMinCalification() {
    return TextFormField(
      initialValue:materia.notaMin.toString(),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          filled: true,
          labelText: 'Nota Minima',
          prefixText: '',
          suffixText: '3.0',
          icon: Icon(Icons.minimize),
          hintText: 'Nota Minima',
          suffixStyle: TextStyle(color: Colors.green)
      ),
      onSaved: (value) => materia.notaMin = double.parse(value),
      validator: (value) {
         if( utils.isNumeric(value)){
          return null;
        }else { 
          return 'Sólo Números';
        }

      },
    );
  }

  Widget _fieldDistribution() {
    return Slider(
      value: _currentSliderValue,
      min: 0,
      max: 100,
      label: _currentSliderValue.round().toString() + '%',
      divisions: 100,
      activeColor: Colors.blueGrey,
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
          print(_currentSliderValue);
        });
      },
    );
  }

  Widget _buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        RaisedButton.icon(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          color: Colors.deepPurple,
          textColor: Colors.white,
          label: Text('Guardar', style: TextStyle(fontSize: 20.0),),
          icon: Icon(Icons.save, size: 25.0,),
          onPressed: (){
            _submit();
          },
        ),
      ],
    );
  }

  void _submit(){

    if (!_formKey.currentState.validate()) return;
    
    _formKey.currentState.save();

      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Guardando Materia'),
          backgroundColor: Colors.deepPurple,
        )
      );

      print(materia.codigo );
      print(materia.nombre );
      print(materia.meta );
      print(materia.notaMin);


    materiasProvides.insertarMateria(materia);

    
  }
}
