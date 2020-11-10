import 'package:flutter/material.dart';

class MateriasPage extends StatefulWidget {
  const MateriasPage({Key key}) : super(key: key);

  @override
  _MateriasPageState createState() => _MateriasPageState();
}

class _MateriasPageState extends State<MateriasPage> {
  final _divider = SizedBox(height: 34.0);

  double _currentSliderValue = 1.0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      scrollDirection: Axis.vertical,
      children: [
        _fieldCode(),
        _divider,
        _fieldName(),
        _divider,
        _fieldObjetive(),
        _divider,
        _fielMinCalification(),
        _divider,
        Text('Distribución'),
        _fieldDistribution(),
        _divider,
        _buttons(),
      ],
    );
  }

  Widget _fieldCode() {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        filled: true,
        icon: Icon(Icons.qr_code_outlined),
        hintText: 'Código de la materia',
        labelText: 'Código',
      ),
      onChanged: (String value) {},
    );
  }

  Widget _fieldName() {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        filled: true,
        icon: Icon(Icons.people),
        hintText: 'Nombre',
        labelText: 'Nombre de la materia',
      ),
      onChanged: (String value) {},
    );
  }

  Widget _fieldObjetive() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          filled: true,
          labelText: 'Meta para la materia',
          prefixText: '',
          suffixText: '3.0',
          icon: Icon(Icons.done),
          hintText: 'Meta',
          suffixStyle: TextStyle(color: Colors.green)),
      onChanged: (String value) {},
    );
  }

  Widget _fielMinCalification() {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          filled: true,
          labelText: 'Nota Minima',
          prefixText: '',
          suffixText: '3.0',
          icon: Icon(Icons.minimize),
          hintText: 'Nota Minima',
          suffixStyle: TextStyle(color: Colors.green)),
      onChanged: (String value) {
        print(value);
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
        RaisedButton(
          color: Colors.indigoAccent,
            child: Row(
              children: [
                Text('Cancelar',
                 style: TextStyle(color: Colors.white, fontSize: 20.0)),
                 Icon(Icons.cancel, color: Colors.white,)
              ],
            ),
           onPressed: () {
            Navigator.pushReplacementNamed(context, 'notas');
          },
        ),
        RaisedButton(
          color: Colors.indigo,
          onPressed: () {},
          child: Row(
            children: [
              Text( 'Guardar', style: TextStyle(color: Colors.white, fontSize: 20.0 )),
              Icon(Icons.save, color: Colors.white,)
            ],
          ),
        ),
      ],
    
    );
  }
}
