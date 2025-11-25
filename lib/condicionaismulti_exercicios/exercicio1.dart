import 'dart:io';

void main() {
  print('Qual a sua idade?');
  String? idadeLeitura = stdin.readLineSync() as String;
  int idade = int.parse(idadeLeitura);

  if (idade < 16) {
    print('Voce nao pode votar');
  } else if (idade == 16 || idade == 17) {
    print('Voto facultativo');
  } else if (idade >= 18 && idade <= 70) {
    print('Voto obrigatorio');
  } else {
    print('Voto facultativo');
  }
}
