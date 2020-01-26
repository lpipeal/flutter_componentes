import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {

  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco','seis','siete','ocho','nueve'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: //_crearItems(),
                _lista()
                  
                ),
              );
          
                     
          
            }
          
            

    Widget _lista() {

      menuProvider.cargarData().then((opciones){
        print(opciones);
      });
     


        return ListView(
            children: _listaItems(),
                    );
            
                }


                
            
              List <Widget>_listaItems() {
                    return [
                      ListTile(title: Text('Hola mundo')),
                      ListTile(title: Text('Hola mundo')),
                      ListTile(title: Text('Hola mundo')),
                      ListTile(title: Text('Hola mundo')),
                      ListTile(title: Text('Hola mundo')),
                    ];

              }



}