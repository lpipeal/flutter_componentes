import 'package:flutter/material.dart';
 
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
        body: ListView(
          children: //_crearItems(),
                _crearItemsCorta()
                  )
                ),
              );
          
                     
          
            }
          
            List<Widget> _crearItems() {

              List<Widget> lista = new List<Widget>();

                for (String opt in opciones) {
                  
                  final tempWidget =ListTile(
                    
                    leading: Icon(Icons.account_box),
                    title: Text(opt),
                    onTap: (){},

                    
                  );
                  //Metodo en cascada para 
                  lista..add(tempWidget)
                       ..add(Divider(height: 50));
                }

              return lista;
            }

  List <Widget> _crearItemsCorta() {

          return opciones.map((item){

            return Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.account_box),
                        title: Text(item),
                        subtitle: Text('Numero'),
                        onTap: (){},
                        trailing: Icon(Icons.keyboard_arrow_right),
                ),
                Divider(height: 35)
              ],
              
            );

          }).toList();

      


  }



}