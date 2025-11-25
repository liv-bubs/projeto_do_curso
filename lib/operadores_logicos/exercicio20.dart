import 'dart:io';

void main() {
  //menu
  print('𝜗𝜚 ❀ LIV BAKERY ❀ 𝜗𝜚');
  print('--------------------------------');
  print('❀ MENU ❀');
  print('Pão de Forma → R\$ 4,00');
  print('Pão → R\$ 2,00');
  print('Queijo → R\$ 10,00');
  print('Bisnaga → R\$ 2,00');
  print('Pão doce → R\$ 1,00');
  print('Leite → R\$ 5,00');
  print('Suspiro → R\$ 4,00');

  //perguntando as quantidades
  print('Quantos paes de forma voce deseja comprar?');
  String? paesFormaLeitura = stdin.readLineSync() as String;
  int paesFormaQnt = int.parse(paesFormaLeitura);

  print('Quantos paes voce deseja comprar?');
  String? paesLeitura = stdin.readLineSync() as String;
  int paesQnt = int.parse(paesLeitura);

  print('Quantos queijos voce deseja comprar?');
  String? queijoLeitura = stdin.readLineSync() as String;
  int queijoQnt = int.parse(queijoLeitura);

  print('Quantos bisnagas voce deseja comprar?');
  String? bismagaLeitura = stdin.readLineSync() as String;
  int bisnagaQnt = int.parse(bismagaLeitura);

  print('Quantos paes doces voce deseja comprar?');
  String? paoDoceLeitura = stdin.readLineSync() as String;
  int paoDoceQnt = int.parse(paoDoceLeitura);

  print('Quantos leites voce deseja comprar?');
  String? leiteLeitura = stdin.readLineSync() as String;
  int leiteQnt = int.parse(leiteLeitura);

  print('Quantos suspiros voce deseja comprar?');
  String? suspiroLeitura = stdin.readLineSync() as String;
  int suspiroQnt = int.parse(suspiroLeitura);

  //se o usuario nao selecionou nenhum produto
  if (paesFormaQnt <= 0 &&
      paesQnt <= 0 &&
      queijoQnt <= 0 &&
      bisnagaQnt <= 0 &&
      paoDoceQnt <= 0 &&
      leiteQnt <= 0 &&
      suspiroQnt <= 0) {
    print('Voce nao selecionou nenhum produto');
    return;
  }

  //preco de cada produto
  double precoPaoForma = 4.00;
  double precoPao = 2.00;
  double precoQueijo = 10.00;
  double precoBisnaga = 2.00;
  double precoPaoDoce = 1.00;
  double precoLeite = 5.00;
  double precoSuspiro = 4.00;

  //preco total da compra sem descontos
  double precoTotal =
      (paesFormaQnt * precoPaoForma) +
      (paesQnt * precoPao) +
      (queijoQnt * precoQueijo) +
      (bisnagaQnt * precoBisnaga) +
      (paoDoceQnt * precoPaoDoce) +
      (leiteQnt * precoLeite) +
      (suspiroQnt * precoSuspiro);

  print('O preco total da sua compra sem descontos é de R\$$precoTotal');

  //variavel pra desconto
  double desconto = 0;

  //regras de desconto
  if (bisnagaQnt >= 1 || paesFormaQnt >= 1) {
    desconto = 0.15;
  } else if (paesQnt >= 10 && queijoQnt >= 1) {
    desconto = 0.1;
  } else if (leiteQnt >= 1 && (paoDoceQnt >= 1 || suspiroQnt >= 1)) {
    desconto = 0.05;
  } else {
    desconto = 0;
  }

  //calculo do preco final
  double precoFinal = precoTotal - (precoTotal * desconto);
  print('O preco final da sua compra com desconto é de R\$$precoFinal');
}
