void main() {
  //first example
  String mensaje = mostrarHeroe(heroe: 'Ironman', attack: 'Clap');
  print(mensaje);
  //second example
  Map<String, String> Ironman = {
    'name'    :   'Ironman',
    'attack'  :   'Reactor beam!'
  };
  String showAttack = showHeroe(heroe: Ironman);
  print(showAttack);

}

String mostrarHeroe({String heroe, String attack}) {
  return 'I am $heroe, $attack ...';
}

String showHeroe({Map heroe}) => 'I am ${heroe['name']} ${heroe['attack']}...';