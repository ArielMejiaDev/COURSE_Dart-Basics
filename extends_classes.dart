void main() {
  final thor = new Heroe();
  thor.name = 'Thor Odinson';
  thor.power = 85;
  thor.heroism = 98;
  thor.attack();
  
  final loki = new Villain();
  loki.name = 'Loki';
  loki.power = 60;
  loki.madness = 90;
  loki.attack();
  
}

abstract class Character {
  String name;
  int power;
}

class Heroe extends Character {
  int heroism;
  void attack() => print('$name attack with ${power * heroism} power points!');
}

class Villain extends Character {
  int madness;
  void attack() => print('$name attack with ${power * madness / 2 } power points');
}