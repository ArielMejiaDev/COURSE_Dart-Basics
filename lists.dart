void main() {
  List <int> numeros = [1,2,3,];
  print(numeros);
  numeros.add(4);
  print(numeros);
  //listas limitadas
  List <int> masNumeros = List(10);
  //error cannot add more because limit is set by 10
  //masNumeros.add(1);
  print(masNumeros);
  masNumeros[0] = 1;
  print(masNumeros);
}