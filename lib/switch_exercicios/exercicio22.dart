import 'dart:io';

void main() {
  print('digite uma letra:');
  String? letra = stdin.readLineSync() as String;

  switch (letra) {
    case 'a':
    case 'e':
    case 'i':
    case 'o':
    case 'u':
      print('vogal');
      break;
    default:
      print('consoante');
      break;
  }
}
