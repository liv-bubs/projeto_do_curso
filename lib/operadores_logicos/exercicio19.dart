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

  print('voce possui habilitacao? (sim / nao)');
  String? possuiHabilitacaoLeitura = stdin.readLineSync();

  bool possuiHabilitacao = possuiHabilitacaoLeitura == 'sim';
  bool naoPossuiHabilitacao = possuiHabilitacaoLeitura == 'nao';

  if (possuiHabilitacao == false && naoPossuiHabilitacao == false) {
    print('Escreva direito plmds a opcao sim ou nao. É DIFICIL?');
    return;
  }

  if (naoPossuiHabilitacao == true) {
    print('pois tire, É DIFICIL?');
    return;
  }

  if (possuiHabilitacao == true) {
    print('Qual das habilitacoes abaixo é seu tipo de habilitacao?');
    print('A - B - C - D - E');
    String? habilitacao = stdin.readLineSync() as String;

    if (habilitacao == 'D') {
      print(
        'voce ja possui a habilitacao D, ta fazendo o que aqui? É DIFICIL?',
      );
      return;
    } else if (habilitacao == 'A') {
      print(
        'Voce ainda nao consegue tirar a habilotacao D com a habilitacao A',
      );
      return;
    } else if (habilitacao == 'E') {
      print('teve alguma infracao? (sim / nao)');
      String? infracaoLeitura = stdin.readLineSync() as String;
      bool teveInfracao = infracaoLeitura == 'sim';
      bool naoTeveInfracao = infracaoLeitura == 'nao';

      if (teveInfracao == false && naoTeveInfracao == false) {
        print('Escreva direito. É DIFICIL?');
      }
      if (naoTeveInfracao == true) {
        print('voce tem direito a habilitacao D e nao sabia disso. É DIFICIL?');
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
        } else {
          print('voce tem direito a habilitacao D. É DIFICIL?');
          return;
        }
      }
    } else if (habilitacao == 'B') {
      print('a quantos anos voce possui essa habilitacao?');
      String? tempoHabilitacaoBLeitura = stdin.readLineSync() as String;
      int tempoHabilitacaoB = int.parse(tempoHabilitacaoBLeitura);

      if (tempoHabilitacaoB < 2) {
        print(
          'voce ainda nao consegue tirar a habiltacao D por causa do tempo de habilitacao',
        );
        return;
      } else {
        print('voce teve alguma infracao? (sim / nao)');
        String? infracaoLeitura = stdin.readLineSync() as String;

        bool teveInfracao = infracaoLeitura == 'sim';
        bool naoTeveInfracao = infracaoLeitura == 'nao';

        if (teveInfracao == false && naoTeveInfracao == false) {
          print('Escreva direito plmds a opcao sim ou nao. É DIFICIL?');
        }
        if (naoTeveInfracao == true) {
          print(
            'voce tem direito a habilitacao D e nao sabia disso. É DIFICIL?',
          );
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
          } else {
            print('voce tem direito a habilitacao D');
            return;
          }
        }
      }
    } else if (habilitacao == 'C') {
      print(
        'a quantos anos voce possui essa habilitacao? (se tiver a habilitacao a menos de 1 ano, digite 0)',
      );

      String? tempoHablitacaoCLeitura = stdin.readLineSync() as String;
      int tempoHabilitacaoC = int.parse(tempoHablitacaoCLeitura);

      if (tempoHabilitacaoC < 1) {
        print(
          'voce ainda nao consegue tirar a habilitacao D tendo a habilitacao C a menos de 1 ano',
        );
        return;
      } else {
        print('voce teve alguma infracao? (sim / nao)');
        String? infracaoLeitura = stdin.readLineSync() as String;

        bool teveInfracao = infracaoLeitura == 'sim';
        bool naoTeveInfracao = infracaoLeitura == 'nao';

        if (teveInfracao == false && naoTeveInfracao == false) {
          print('Escreva direito plmds a opcao sim ou nao. É DIFICIL?');
        }

        if (naoTeveInfracao == true) {
          print(
            'voce tem direito a habilitacao D e nao sabia disso. É DIFICIL?',
          );
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
          } else {
            print('voce tem direito a habilitacao D. É DIFICIL?');
            return;
          }
        }
      }
    } else {
      print('Essa opcao nao existe, é DIFICIL?');
      return;
    }
  }
}
