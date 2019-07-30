import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/app.dart';
import 'package:preferencias_usuario/src/shared_preference_data/shared_preference_data.dart';
 
void main() async{
  //instanciate and Init Shared Preference Data singleton     // Explanation: this is the only instance that is created in all app then other instances just get the same instance
  final prefs = new SharedPreferenceData();
  await prefs.initPrefs();
  runApp(App());
}
 
