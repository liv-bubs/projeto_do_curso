import 'dart:io';

void main() {
  print('insira seu nome');
  String? nome = stdin.readLineSync();
  print('Ola,$nome,seja muito bem vindo(a) a nossa loja');

  switch (nome) {
    case 'cuidapetrestrito':
      print('O cliente comprou ração Ração Royal Canin Indor 7,5kg? (s/n)');
      String? racaoFuncionario = stdin.readLineSync() as String;
      print('O cliente solicitou banho e tosa? (s/n)');
      String? banhoetosaFuncionario = stdin.readLineSync() as String;
      print('O cliente solicitou tosa higienica? (s/n)');
      String? tosahigienicaFuncionario = stdin.readLineSync();
      print('O cliente solicitou hidratacao de pelo? (s/n)');
      String? hidratacaoFuncionario = stdin.readLineSync();

      double preco = 0;

      double precoRacao = 280.00;
      double precoBanhoTosa = 54.00;
      double precoTosaHigienica = 10.99;
      double precoHidratacao = 39.99;

      if (racaoFuncionario == 's') {
        preco = preco + precoRacao;
      }
      if (banhoetosaFuncionario == 's') {
        preco = preco + precoBanhoTosa;
      }
      if (tosahigienicaFuncionario == 's') {
        preco = preco + precoTosaHigienica;
      }
      if (hidratacaoFuncionario == 's') {
        preco = preco + precoHidratacao;
      }

      if (banhoetosaFuncionario == 's' &&
          tosahigienicaFuncionario == 's' &&
          hidratacaoFuncionario == 's') {
        preco =
            preco -
            (precoBanhoTosa + precoTosaHigienica + precoHidratacao) * 0.2;
      }
      print('O preco total da compra é de R\$ $preco');
      break;

    default:
      print(
        'Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o colaborador Junior e, para serviçoscomo banho ou tosa, procure o colaborador Neto. Obrigado e esperamos que tenha uma ótima experiência em nossa loja.',
      );
      print('--------------------------------');
      print('Qual das opcoes voce gostaria?');
      print('');
      print('1- Ver ofertas de produtos');
      print('2- Ver ofertas de servicos');
      print('3- Ver ofertas de roupas');
      print('4- Ver novos servicos');
      print('5- Promoção I 10% de desconto');
      print('6- Promoção II 20% de desconto');
      print('--------------------------------');

      String? opcaoLeitura = stdin.readLineSync() as String;
      int? opcao = int.tryParse(opcaoLeitura);

      //  final _ = switch (opcao) {
      //     1 => print(
      //           'Ração Royal Canin Indor 7,5kg com o valor promocional de R\$ 280,00',
      //         ),
      //     2 => print('Banho e tosa na promoção pelo preço do banho R\$ 54,00'),
      //     3 => print('Capa de chuva R\$59,99'),
      //     4 => print(
      //           'Hidratação de pelo R\$ 39,99 | Tosa higienica por R\$ 10,99 | Tingimento dos pelo por R\$ 55,99.',
      //         ),
      //     _ => print('Opção inválida'),
      //   };

      if (opcao == 1) {
        print(
          'Ração Royal Canin Indor 7,5kg com o valor promocional de R\$ 280,00',
        );
      } else if (opcao == 2) {
        print('Banho e tosa na promoção pelo preço do banho R\$ 54,00');
      } else if (opcao == 3) {
        print('Capa de chuva R\$59,99');
      } else if (opcao == 4) {
        print(
          'Hidratação de pelo R\$ 39,99 | Tosa higienica por R\$ 10,99 | Tingimento dos pelo por R\$ 55,99.',
        );
      } else if (opcao == 5) {
        print(
          'Compre um saco de 15kg de ração (R\$ 345,99) e ganhe 10% de desconto no banho.',
        );
      } else if (opcao == 6) {
        print(
          'Compre 1 banho com tosa higienica e hidratação e ganhe 20% de desconto no valor total.',
        );
      } else {
        print('Opção inválida');
      }
  }
}

//void funcionarioExecutar() {}
