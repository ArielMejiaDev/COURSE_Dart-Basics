// Shared Preference Data class
//-------------------------------------------------------------------------------------
// This class provide access to shared preference data on storage
// to get and set values and shared them in a global app scope
// it implements a Singleton patter to provide same instance
// in every new SharedPrefData object it returns the same instance
// so it only need to be instanciate as main void level
// and it could be share on any app level, a detail explanation below


import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceData {

  //Implements the singleton pattern
  static final SharedPreferenceData _instance = new SharedPreferenceData._internal();//static method to return

  factory SharedPreferenceData() {//factory to return itself again as the same instance
    return _instance;
  }

  SharedPreferenceData._internal();//constructor from method

  SharedPreferences _prefs;//instance of shared preference library

  initPrefs() async{//method to intialize the instance of shared preference library is the library constructor is required to set and get properties of this library
    _prefs = await SharedPreferences.getInstance();
  }

  //End of singleton pattern implementation---

  // bool    _colorSecundario;
  // int     _genero;
  // String  _nombre;

  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero(int value) {//setter do not return anything
    _prefs.setInt('genero', value);
  }

  get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? true;
  }

  set colorSecundario(bool value) {//setter do not return anything
    _prefs.setBool('colorSecundario', value);
  }

  get name {
    return _prefs.getString('name') ?? '';
  }

  set name(String value) {//setter do not return anything
    _prefs.setString('name', value);
  }

  get ultimaPagina {
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina(String value) {//setter do not return anything
    _prefs.setString('ultimaPagina', value);
  }

}


// Detail explanation
//-------------------------------------------------------------
// Why use singleton for shared preference package
// you could only craete a file with a variable
// that instanciate the shared preference package
// and then call getInstance() method
// so you can call the method getInt or any other 
// getBool or other getter or set method like setInt
// so why make all the effort to create a singleton?
// to create a single instance that can be handle
// globally in every new instance of the same object
// and as a pro you can create many custom getters 
// or setter to manage the logic as you want
// and inside those getters and setters you can 
// instanciate the getInt or setInt method from the
// shared preference package