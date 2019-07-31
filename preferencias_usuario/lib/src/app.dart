import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/pages/home_page.dart';
import 'package:preferencias_usuario/src/pages/settings_page.dart';
import 'package:preferencias_usuario/src/shared_preference_data/shared_preference_data.dart';

class App extends StatelessWidget {
  final prefs = new SharedPreferenceData();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName      :   (BuildContext context) => HomePage(),
        SettingsPage.routeName  :   (BuildContext context) => SettingsPage(),
      },
    );
  }
}