import 'dart:io';

void main() {
  print('Digite um numero');
  String? numeroLeitura = stdin.readLineSync() as String;
  num numero = num.parse(numeroLeitura);

  if (numero >= 0) {
    print('positivo');
  } else {
    print('negativo');
  }
}
