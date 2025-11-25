import 'dart:io';

void main() {
  print('Quantos sucos gostaria de comprar?');
  String? qntSucosLeitura = stdin.readLineSync() as String;
  int qntSucos = int.parse(qntSucosLeitura);

  double precoUnidadeSuco = 5.50;
  double precoAtacadoSuco = 4.50;

  if (qntSucos <= 0 || qntSucos > 100) {
    print('Quantidade de sucos invalida');
    return;
  }

  if (qntSucos < 10) {
    double precoTotalUnidade = qntSucos * precoUnidadeSuco;
    print('O preco total da sua compra é de $precoTotalUnidade');
  }

  if (qntSucos >= 10) {
    double precoTotalAtacado = qntSucos * precoAtacadoSuco;
    print('O preco total da sua compra é de $precoTotalAtacado');
  }
}
