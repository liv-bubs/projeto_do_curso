import 'dart:io';

void main() {
  print('digite sua altura (em metros):');
  String? alturaLeitura = stdin.readLineSync() as String;
  double altura = double.parse(alturaLeitura);

  print('digite seu peso (em quilogramas):');
  String? pesoLeitura = stdin.readLineSync() as String;
  double peso = double.parse(pesoLeitura);

  double imc = peso / (altura * altura);

  if (imc < 18.5) {
    print('magresa');
  } else if (imc >= 18.5 && imc <= 24.9) {
    print('normal');
  } else if (imc > 24.9 && imc <= 30) {
    print('sobrepeso');
  } else {
    print('obesidade');
  }
}
