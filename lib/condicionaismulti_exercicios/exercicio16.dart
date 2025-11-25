import 'dart:io';

void main() {
  print('Digite qual suco voce gostaria');
  String? suco = stdin.readLineSync() as String;

  if (suco == 'L' || suco == 'l') {
    print('Laranja - vitamina C');
  } else if (suco == 'M' || suco == 'm') {
    print('Morango - vitamina A');
  } else if (suco == 'A' || suco == 'a') {
    print('Acerola - vitamina C');
  } else if (suco == 'U' || suco == 'u') {
    print('Uva - vitamina E');
  } else {
    print('suco indisponivel');
  }
}
