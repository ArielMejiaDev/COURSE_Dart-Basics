void main() {
  print('First line executed....');
  void getData() async {
    String data = await httpGet(url: 'https://www.superheroapi.com/api.php/115251019776512/176');
    print(data);
    print('Last line executed ...');
  }
  getData();
}

Future<String> httpGet({String url}) {
  return Future.delayed(Duration(seconds: 4), (){
    return 'Get data from a Http request!';
  });
}