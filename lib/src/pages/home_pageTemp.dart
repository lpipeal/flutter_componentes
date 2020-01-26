import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget{

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco',''];

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text ('App Componentes'),
      ),body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Ingenieria de sistemas'),
            subtitle: Text('Grupo 51'),
            onTap: (){},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Ingenieria de sistemas'),
            subtitle: Text('Grupo 51'),
            onTap: (){},
          ),
          Divider(),
        ],
      ),
    );
  }

}
