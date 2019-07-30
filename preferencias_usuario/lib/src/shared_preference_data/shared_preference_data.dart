// Shared Preference Data class
//-------------------------------------------------------------------------------------
// This class provide access to shared preference data on storage
// to get and set values and shared them in a global app scope
// it implements a Singleton patter to provide same instance
// in every new SharedPrefData object it returns the same instance
// so it only need to be instanciate as main void level
// and it could be share on any app level


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



}