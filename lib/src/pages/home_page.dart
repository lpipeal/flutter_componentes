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

      //menuProvider.cargarData().then((opciones){
        //print(opciones);
      //});
     
     return FutureBuilder(
       future: menuProvider.cargarData(),
       initialData: [],
       builder: (BuildContext context, AsyncSnapshot <List<dynamic>>snapshot){

                print('builder');
                print(snapshot.data);

                 return ListView(
                    children: _listaItems(snapshot.data),
                  );       

                 },
     );


 
            
                }



            
              List <Widget>_listaItems(List<dynamic> data) {
                    
                  final List <Widget> opciones =[];


                          data.forEach((opt){ 

                                    final widgetTemp = ListTile(
                                      title: Text(opt['texto']),
                                      leading: Icon(Icons.account_circle, color: Colors.blue,),
                                      trailing: Icon(Icons.keyboard_arrow_right),
                                      onTap: (){
                                        
                                      },
                                    );
                                  opciones..add(widgetTemp)
                                            ..add(Divider(height: 35,));
                                }
                          );
                    
                  return opciones;
                  
              }



}