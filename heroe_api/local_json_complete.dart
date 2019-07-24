import 'dart:convert';
void main() {
  //create a simple class example
  //classic constructor
  //final thunderstrike = Heroe(name: 'Thunderstrike', power: 'Asgardian powers');
  
  //constructor from json
  final rawJson = '{"response": "success","id": "664","name": "Thunderstrike","powerstats": {"intelligence": "63","strength": "80","speed": "70","durability": "84","power": "42","combat": "72"},"biography": {"full-name": "Eric Kevin Masterson","alter-egos": "No alter egos found.","aliases": ["Thor"],"place-of-birth": "-","first-appearance": "(as Masterson) Thor #391; (as Thor) Thor #432; (as Thunderstrike) Thunderstrike #1","publisher": "Marvel Comics","alignment": "good"},"appearance": {"gender": "Male","race": "null","height": [\"6\'6",\"198 cm\"],"weight": ["640 lb","288 kg"],"eye-color": "Blue","hair-color": "Blond"},"work": {"occupation": "(as Thunderstrike) Adventurer, crimefighter, (as Masterson) Architect","base": "-"},"connections": {"group-affiliation": "(At time of death) Avengers; (Formerly) Legion of the Unliving, Thor Corps","relatives": "Marcy Masterson Steele (wife, divorced), Kevin Masterson (son)"},"image": {"url": "https://www.superherodb.com/pictures2/portraits/10/100/177.jpg"}}';
  Map parsedJson = json.decode(rawJson);
  final thunderstrike = Heroe.fromJson( parsedJson );
  print(thunderstrike.printData());
  
}

class Heroe {
  String name;
  String fullname;
  String firstappearance;
  String occupation;
  String groupaffiliation;
  String image;
  String intelligence;
  String strength;
  String speed;
  String durability;
  String power;
  String combat;
  
  //classic constructor
  Heroe({this.name, this.power});
  //named constructor
  Heroe.fromJson(Map parsedJson ) {
    name                = parsedJson['name'];
    fullname            = parsedJson['biography']['full-name'];
    firstappearance     = parsedJson['biography']['first-appearance'];
    occupation          = parsedJson['work']['occupation'];
    groupaffiliation    = parsedJson['connections']['group-affiliation'];
    image               = parsedJson['image']['url'];
    intelligence        = parsedJson['powerstats']['intelligence'];
    strength            = parsedJson['powerstats']['strength'];
    speed               = parsedJson['powerstats']['speed'];
    durability          = parsedJson['powerstats']['durability'];
    power               = parsedJson['powerstats']['power'];
    combat              = parsedJson['powerstats']['combat'];
    
  }
  //print method
    String printData() {
    return 'Name: $name \n- Fullname: $fullname \n- First appearance: $firstappearance \n- Occupation: $occupation \n- Group affiliation: $groupaffiliation \n- Image: $image \n- Intelligence: $intelligence \n- Strength: $strength \n- Speed: $speed \n- Durability: $durability \n- Power: $power \n- Combat: $combat';
  }
  
}

