import 'dart:io';

void main() {
  print('qual estacao voce gostaria de saber quando comeca?');
  String? estacao = stdin.readLineSync() as String;

  if (estacao == 'outono') {
    print('20 de marco');
  } else if (estacao == 'inverno') {
    print('21 de junho');
  } else if (estacao == 'primavera') {
    print('22 de setembro');
  } else if (estacao == 'verao') {
    print('21 de dezembro');
  } else {
    print('resposta invalida');
  }
}
