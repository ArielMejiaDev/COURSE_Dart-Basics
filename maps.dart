void main() {
  Map<String, dynamic> Ironman = {
    'name'      :   'Anthony Stark',
    'level'     :   '85',
    'hability'  :   'Super strength fly and beams attacks with his armor',
    'weapon'    :   'Ironman armour'
  };
  print('----------------------------------------------------------');
  print('--------------------SHIELD DATABASE-----------------------');
  print('----------------------------------------------------------');
  print('------------------------IRONMAN---------------------------');
  print('Name: ${Ironman['name']}');
  print('Lever: ${Ironman['level']}');
  print('Hability: ${Ironman['hability']}');
  print('Weapon: ${Ironman['wapong']}');
  print('----------------------------------------------------------');
  
  //second example
  Map<int, dynamic> Avengers = {
    1   :   'Ironman',
    2   :   'Captain America',
    4   :   'Thor',
    6   :   'Hulk',
    8   :   'Black Widow',
    9   :   'Hawkeye'
  };
  print(' ');
  print('----------------------------------------------------------');
  print('--------------------SHIELD DATABASE-----------------------');
  print('----------------------------------------------------------');
  print('-----------------------AVENGERS---------------------------');
  print( Avengers[1] );
  print( Avengers[2] );
  print( Avengers[4] );
  print( Avengers[6] );
  print( Avengers[8] );
  print( Avengers[9] );
  Avengers.addAll( {10 : 'Scarleth Witch'} );
  print( Avengers[10] );
  print('----------------------------------------------------------');
}