import 'dart:io';

void main() {
  print('Ola, seja bem vindo(a), voce é prioritario?');
  String? prioridadeLeitura = stdin.readLineSync() as String;

  bool prioridade = prioridadeLeitura == 'sim';
  bool naoPrioridade = prioridadeLeitura == 'nao';

  if (prioridade == false && naoPrioridade == false) {
    print('resposta invalida, por favor digite sim ou nao');
    return;
  }

  if (prioridade == true) {
    print('Va para um dos caixas a seguir: 1, 2, 3');
  }
  if (naoPrioridade == true) {
    print('Va para qualquer caixa exceto os caixas 1, 2, 3');
  }
}
