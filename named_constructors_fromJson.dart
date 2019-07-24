import 'dart:convert';
void main() {
  //create a simple class example
  //classic constructor
  //final thunderstrike = Heroe(name: 'Thunderstrike', power: 'Asgardian powers');
  
  //constructor from json
  final rawJson = '{"name":"Thunderstrike", "power":"Asgardian Powers"}';
  Map parsedJson = json.decode(rawJson);
  final thunderstrike = Heroe.fromJson( parsedJson );
  print(thunderstrike.printData());
  
}

class Heroe {
  String name;
  String power;
  
  //classic constructor
  Heroe({this.name, this.power});
  //named constructor
  Heroe.fromJson( Map parsedJson ) {
    name  = parsedJson['name'];
    power = parsedJson['power'];
  }
  //print method
    String printData() {
    return 'Name: $name - Power: $power';
  }
  
}