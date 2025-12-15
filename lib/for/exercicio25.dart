import 'dart:io';

void main() {
  for (int contador = 1; contador <= 10; contador++) {
    print('digite um numero');
    String? numeroLeitura = stdin.readLineSync() as String;
    int numero = int.parse(numeroLeitura);
  }
}
