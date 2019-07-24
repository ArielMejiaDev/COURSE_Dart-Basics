void main() {
  final ironman = new Ironman();
  ironman.name = 'Iron-man';
  ironman.fly();
  
  final falcon = new Falcon();
  falcon.name = 'Falcon';
  falcon.fly();
  falcon.run();
}

//clase padre
abstract class Character {
  String name;
}
//clase hijas
abstract class Heroe extends Character {
  String heroism;
}
abstract class Villain extends Character {
  String evil;
}
//mixins
abstract class Flyer {
  String name;
  void fly() => print('$name is flyng...');
}
abstract class Runner {
  String name;
  void run() => print('$name is running');
}
abstract class Swimmer {
  String name;
  void swim() => print('$name is swimming');
}
class Ironman extends Heroe with Flyer {}
class Falcon extends Heroe with Flyer, Runner {}
