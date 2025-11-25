import 'dart:io';

void main() {
  print('Qual o nome do aluno?');
  String? nome = stdin.readLineSync() as String;

  print('Qual foi a primeira nota do aluno?');
  String? nota1Leitura = stdin.readLineSync() as String;

  print('Qual foi a segunda nota do aluno?');
  String? nota2Leitura = stdin.readLineSync() as String;

  double nota1 = double.parse(nota1Leitura);
  double nota2 = double.parse(nota2Leitura);

  double media = ((nota1 + nota2) / 2);

  if (nota1 > 10 || nota2 > 10 || nota1 < 0 || nota2 < 0) {
    print('nota invalida as notas devem ser entre 0 e 10');
    return;
  }

  if (media >= 6) {
    print('$nome aprovado com nota $media');
  } else {
    print(
      '$nome esta de recuperacao com nota $media. Qual a nota de $nome na recuperação?',
    );

    String? notaRecuperacaoLeitura = stdin.readLineSync() as String;
    double notaRecuperacao = double.parse(notaRecuperacaoLeitura);

    if (notaRecuperacao >= 5) {
      print('$nome esta aprovado pela recuperacao com nota $notaRecuperacao');
    } else {
      print('$nome esta REPROVADO');
    }
  }
}
