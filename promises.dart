void main() {
  print('Hawkeye and Black Widow goes to Vormir... 5 years behind');
  
  print('----------------- TIME TRAVEL --------------------------');
  
  httpGet(url: 'https://pym-particles.com/vormir/2015').then((data){
    print(data);
  });
  print('---------------- First Timeline Continue ---------------');
}

Future<String> httpGet({String url}){
  return Future.delayed(Duration(seconds: 4), (){
    return 'They got the soul stone... But unfortunately only Hawkeye returns to the present \n---------------- Second Timeline created! ----------------';
  });
}