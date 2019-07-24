void main() {
  
  final CaptainAmerica = new Avenger();
  CaptainAmerica.name = 'Captain America';
  CaptainAmerica.power = '70';
  CaptainAmerica.attack();
  
  final Wolverine = new Xmen();
  Wolverine.name = 'Wolverine';
  Wolverine.power = '95';
  Wolverine.attack();
  
}

abstract class Heroe {
  String name;
  String power;
  
  void attack() => print('$name attack with $power points of attack');
}

class Avenger implements Heroe {
    String name;
    String power;
  
    void attack() => print('Avengers Assamble $name attack with $power points of attack');
}

class Xmen implements Heroe {
  String name;
  String power;
  
  void attack() => print('Xmen attack!!! $name attack with $power points of attack');
}