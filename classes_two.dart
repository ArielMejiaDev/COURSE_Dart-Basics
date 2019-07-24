void main() {
  final wolverine = Heroe(nombre: 'Wolverine', poder: 'Regeneracion');
  print(wolverine.printData());
}

class Heroe {
  String nombre;
  String poder;
  
  Heroe({String this.nombre = 'Heroe', String this.poder});
  
  String printData() => 'Nombre: $nombre - Poder: $poder';
}