void main() {
  bool condicion = true;
  print(condicion);
  condicion = !condicion;
  
  if(condicion){
    print('Motor prendido');
  }else{
    print('Motor apagado');
  }
  
  if(!condicion){
    print('Motor prendido');
  }else{
    print('Motor apagado');
  }
}