import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco',''];

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text ('App Componentes'),
      ),body: ListView(
        children: <Widget>[
            
        ],
      ),
    );
  }

}
