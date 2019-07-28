import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {

  List opciones = [];

  _MenuProvider();

  Future<List<dynamic>> cargarData() async {

    final response = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(response);
    return dataMap['rutas'];
  }

}

final menuProvider = _MenuProvider();