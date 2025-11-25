import 'dart:io';

void main() {
  print('qual sua idade?');
  String? idade = stdin.readLineSync() as String;

  print('qual o valor do seu celular?');
  String? valor = stdin.readLineSync() as String;

  print(int.parse(idade) + 10);
  print(double.parse(valor) - 10);
}
