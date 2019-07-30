
import 'package:componentes/src/pages/alert.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:flutter_cupertino_localizations/flutter_cupertino_localizations.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       localizationsDelegates: [
      // ... app-specific localization delegate[s] here
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      //GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: [
        const Locale('en'), // English
        const Locale('es'), // Spanish
      ],
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: HomePage()
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(
          builder: (BuildContext context) => Alert()
        );
      },
    );
  }
  
}