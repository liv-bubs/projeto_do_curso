import 'dart:io';

void main() {
  //feito pelo professor

  //guardando os valores em variaveis
  //se fosse fazer dentro do for a variavel ia "morrer" dentro do for
  var maiorValor = 0;
  var totalValor = 0;

  for (var saques = 1; saques <= 10; saques++) {
    print('Qual o valor que você deseja sacar?');
    //o loop nao esta descontroldo pq o readLineSync esta esperando o usuario digitar o valor
    var valorLeitura = stdin.readLineSync() as String;
    var valor = int.parse(valorLeitura);

    //se o valor maior que o maior valor, ele se torna o maior valor
    if (valor > maiorValor) {
      maiorValor = valor;
    }
    //somando os saques anteriores com o valor do saque atual
    totalValor = totalValor + valor;
    print('Saque de $valor realizado com sucesso ');
  }

  print('Relatório do Dia');
  print('Maior valor sacado: $maiorValor');
  print('Média do valor sacado: ${totalValor / 10}');
  print('Total de valor sacado: $totalValor');
}
