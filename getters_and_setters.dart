void main() {
  
  final cuadrado = new Cuadrado();
  cuadrado.lado = 10;
  print('El lado es: ${cuadrado.lado}');
  print('El area es: ${cuadrado.area}');
  
  
}

class Cuadrado {
  //property
  double _lado;
  //setter
  set lado( double valor) {
    if(valor <= 0) {
      throw('El lado debe ser mayor a 0');
    }
    _lado = valor;
  }
  
 double get area => _lado * _lado;
  
 double get lado => _lado;
  
  printLado() => 'El lado es: $_lado';
  
}