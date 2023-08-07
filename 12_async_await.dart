import 'dart:math';

void main() async {
  
  print('BEGIN');
  
  try {
    final value = await httpGet('https://www.google.com');
    print(value);
  } catch(err) {
    print('Error: $err');
  }

  print('END');
}

Future<String> httpGet(String url) async {
 
  int randomNumber = Random().nextInt(2);

  await Future.delayed(Duration(seconds: 1));

  if(randomNumber == 0) {
    throw 'Http response error';
  } else {
    return 'Http response';
  }
}
