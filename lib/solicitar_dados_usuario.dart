import 'dart:io';

void main() {
  print('qual seu nome?');
  String? nome = stdin.readLineSync();

  print('qual sua frase favorita?');
  String? frase = stdin.readLineSync();
  print('a frase favorita de $nome é $frase');
}
