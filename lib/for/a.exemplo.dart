import 'dart:io';

void main() {
  // for(variavel = inicio; condicao; acrescimo){}
  //exemplo 1:
  for (var amor = 0; amor <= 10; amor++) {
    print('amo meu namorado');
  }

  //exemplo 2:
  print('Digite o número que você quer a tabuada');
  String? numeroLeitura = stdin.readLineSync() as String;
  int numero = int.parse(numeroLeitura);

  for (int contador = 10; contador >= 1; contador--) {
    int tabuada = contador * numero;
    print('$numero x $contador = $tabuada');
  }

  //exemplo 3:
}
