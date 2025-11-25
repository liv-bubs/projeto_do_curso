import 'dart:io';

void main() {
  print('digite sua idade:');
  String idadeLeitura = stdin.readLineSync() as String;
  int idade = int.parse(idadeLeitura);

  if (idade < 18) {
    print('voce nao pode dirigir, é DIFICIL?');
    return;
  }

  if (idade < 21) {
    print('voce nao pode ter habilitacao D, é DIFICIL?');
    return;
  }

  print(
    'Qual das habilitacoes abaixo é seu tipo de habilitacao? (Se nao possui habilitacao, digite N/A)',
  );
  print('A - B - C - D - E');
  String? habilitacao = stdin.readLineSync() as String;

  if (habilitacao == 'N/A') {
    print('voce nao possui habilitacao, é DIFICIL?');
    return;
  }

  if (habilitacao != 'D' &&
      habilitacao != 'A' &&
      habilitacao != 'B' &&
      habilitacao != 'C' &&
      habilitacao != 'E') {
    print('Essa opcao nao existe, é DIFICIL?');
    return;
  }

  if (habilitacao == 'D') {
    print('voce ja possui a habilitacao D, ta fazendo o que aqui? É DIFICIL?');
    return;
  }

  if (habilitacao == 'A') {
    print('Voce ainda nao consegue tirar a habilotacao D com a habilitacao A');
    return;
  }

  print('teve alguma infracao? (sim / nao)');
  String? infracaoLeitura = stdin.readLineSync() as String;
  bool teveInfracao = infracaoLeitura == 'sim';
  bool naoTeveInfracao = infracaoLeitura == 'nao';

  if (teveInfracao == false && naoTeveInfracao == false) {
    print('Escreva direito. É DIFICIL?');
    return;
  }

  if (teveInfracao == true) {
    print('a quanto messes voce teve essa infracao?');
    String? messesInfracoesLeitura = stdin.readLineSync() as String;
    int messesInfracoes = int.parse(messesInfracoesLeitura);
    if (messesInfracoes <= 12) {
      print(
        'Por conta das infracoes, voce nao tem direito a habilitacao D. É DIFICIL?',
      );
      return;
    }
  }

  if (habilitacao == 'E') {
    print('voce tem direito a habilitacao D e nao sabia disso. É DIFICIL?');
    return;
  }

  print('a quantos anos voce possui essa habilitacao?');
  String? tempoHabilitacaoBLeitura = stdin.readLineSync() as String;
  int tempoHabilitacao = int.parse(tempoHabilitacaoBLeitura);
  if (habilitacao == 'B') {
    if (tempoHabilitacao < 2) {
      print(
        'voce ainda nao consegue tirar a habiltacao D por causa do tempo de habilitacao',
      );
      return;
    }
    print('voce tem direito a habilitacao D e nao sabia disso. É DIFICIL?');
    return;
  }
  if (habilitacao == 'C') {
    if (tempoHabilitacao < 1) {
      print(
        'voce ainda nao consegue tirar a habilitacao D tendo a habilitacao C a menos de 1 ano',
      );
      return;
    } else {
      print('voce tem direito a habilitacao D e nao sabia disso. É DIFICIL?');
      return;
    }
  } else {
    print('Essa opcao nao existe, é DIFICIL?');
    return;
  }
}
