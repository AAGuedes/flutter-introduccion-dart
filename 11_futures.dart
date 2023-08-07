import 'dart:math';

void main() {
  
  print('BEGIN');
  
  httpGet('https://www.google.com').then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });

  print('END');
}

Future<String> httpGet(String url) {
 
  return Future.delayed(Duration(seconds: 1), () {
    int randomNumber = Random().nextInt(2);

    if(randomNumber == 0) {
      return 'Http response';
    } else {
      throw 'Http request error';  
    }
  });
}
