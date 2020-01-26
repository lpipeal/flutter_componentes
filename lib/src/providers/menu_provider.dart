import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {

  List<dynamic> opciones = [];


    _MenuProvider(){
      //cargarData();
      }
         
    Future <List<dynamic>> cargarData() async{
       
        final resp = await  rootBundle.loadString('data/menu_opts.json');

       //metodo para cargar la data desde el json
            Map dataMap = jsonDecode(resp);
            //print (dataMap['rutas']);
            opciones=dataMap['rutas'];

            return opciones;
        }
      }



final menuProvider = new _MenuProvider();