import 'dart:io';

void main() {
  print('Qual tamanho de blusa voce deseja? (P, M, G)');
  String? tamanho = stdin.readLineSync() as String;

  switch (tamanho) {
    case 'P':
      print('0.46 X 0.55');
      break;
    case 'M':
      print('0.51 X 0.56');
      break;
    case 'G':
      print('0.52 X 0.58');
      break;
    default:
      print('tamanho invalido');
      break;
  }
}
