import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPage();
}

class _ContadorPage extends State<ContadorPage> {
  final _extiloTexto = TextStyle(fontSize: 35);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Número de clicks',
                style: _extiloTexto,
              ),
              Text(
                '$_conteo',
                style: _extiloTexto,
              ),
            ],
          ),
        ),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _sustraer,
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar,
        ),
      ],
    );
  }

  void _agregar() => setState(() => _conteo++);
  void _sustraer() => setState(() => (_conteo > 0) ? _conteo-- : 0);
  void _reset() => setState(() => _conteo = 0);
}
