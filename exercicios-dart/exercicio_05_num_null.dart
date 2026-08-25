// Exercício 05 - num + Null Safety
// num aceita int e double; tipos com ? aceitam null.

void main() {
  // num com inteiro
  num leitura = 12;
  print('Leitura como inteiro: $leitura');

  // num com decimal (a mesma variável aceita)
  leitura = 12.75;
  print('Leitura como decimal: $leitura');

  // String? começa como null
  String? observacoes;
  print('Observações iniciais: $observacoes');

  // double? com valor
  double? inclinacaoTerreno = 8.3;

  // ?? fornece valor padrão quando a variável é null
  print('Observações: ${observacoes ?? 'não informado'}');

  // Checagem explícita de null antes de usar o valor
  if (inclinacaoTerreno != null) {
    print('Inclinação do terreno: ${inclinacaoTerreno.toStringAsFixed(1)}°');
  }

  // Depois de atribuir, o ?? passa a devolver o valor real
  observacoes = 'Faixa de domínio com mato alto';
  print('Observações: ${observacoes ?? 'não informado'}');
}
