import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {

  List<dynamic> opciones = [];


    _MenuProvider(){
      cargarData();
      }
    
      
      
      cargarData() {
       
       //metodo para cargar la data desde el json
        rootBundle.loadString('data/menu_opts.json')
        .then((data){
            Map dataMap = jsonDecode(data);
            print (dataMap['rutas']);
            opciones=dataMap['rutas'];
        });
      }

}

final menuProvider = new _MenuProvider();