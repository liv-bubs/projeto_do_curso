import 'dart:io';

void main() {
  print('digite um numero');
  String? numeroLeitura = stdin.readLineSync() as String;
  int numero = int.parse(numeroLeitura);

  if (numero == 1) {
    print('domingo');
  } else if (numero == 2) {
    print('segunda feira');
  } else if (numero == 3) {
    print('terca feira');
  } else if (numero == 4) {
    print('quarta feira');
  } else if (numero == 5) {
    print('quinta feira');
  } else if (numero == 6) {
    print('sexta feira');
  } else if (numero == 7) {
    print('sabado');
  } else {
    print('numero invalido');
  }
}
