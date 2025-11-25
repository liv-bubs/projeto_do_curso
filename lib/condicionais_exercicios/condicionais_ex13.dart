import 'dart:io';

void main() {
  print('qual o preco da gasolina?');
  String? gasolinaLeitura = stdin.readLineSync() as String;
  num gasolina = num.parse(gasolinaLeitura);

  print('e o preco do etanol?');
  String? etanolLeitura = stdin.readLineSync() as String;
  num etanol = num.parse(etanolLeitura);

  double calculo = (etanol / gasolina);

  if (calculo >= 0.7) {
    print('compensa mais abastecer com gasolina');
  } else {
    print('compensa mais abastecer com etanol');
  }
}
