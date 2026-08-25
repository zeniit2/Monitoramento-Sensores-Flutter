// Exercício 03 - double
// Densidades, temperatura e umidade com formatação de casas decimais.

import 'dart:math';

void main() {
  double densidade1 = 0.42;
  double densidade2 = 0.71;
  double densidade3 = 0.91;
  double temperatura = 29.7;
  double umidade = 55.3;

  // Soma das densidades
  double soma = densidade1 + densidade2 + densidade3;
  print('Soma das densidades: ${soma.toStringAsFixed(2)}');

  // Média das densidades
  double media = soma / 3;
  print('Média das densidades: ${media.toStringAsFixed(2)}');

  // Maior densidade (max compara de duas em duas)
  double maior = max(densidade1, max(densidade2, densidade3));
  print('Maior densidade: ${maior.toStringAsFixed(2)}');

  // Aviso de urgência quando a maior densidade atinge 0.90
  if (maior >= 0.90) {
    print('AVISO: densidade em nível de URGÊNCIA - programar corte!');
  }

  // Valores formatados
  print('Densidade 1: ${densidade1.toStringAsFixed(2)}');
  print('Densidade 2: ${densidade2.toStringAsFixed(2)}');
  print('Densidade 3: ${densidade3.toStringAsFixed(2)}');
  print('Temperatura: ${temperatura.toStringAsFixed(1)} °C');
  print('Umidade: ${umidade.toStringAsFixed(1)} %');
}
