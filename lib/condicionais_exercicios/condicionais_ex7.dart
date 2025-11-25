import 'dart:io';

void main() {
  print('escolha um numero de 1 a 10');
  String? numeroLeitura = stdin.readLineSync() as String;
  int numero = int.parse(numeroLeitura);

  if (numero == 5) {
    print('voce acertou o numero');
  }
}
