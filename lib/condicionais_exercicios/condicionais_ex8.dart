import 'dart:io';

void main() {
  print('Qual a velocidade do carro?');
  String? velocidadeLeitura = stdin.readLineSync() as String;
  int velocidade = int.parse(velocidadeLeitura);

  if (velocidade > 80) {
    print('MULTADO');
  }
}
