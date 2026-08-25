// Exercício 06 - List
// Listas de status e densidades com percurso, add e filtro.

void main() {
  List<String> status = ['NORMAL', 'ATENCAO', 'URGENTE'];
  List<double> densidades = [0.38, 0.55, 0.74, 0.92];

  // Percorre a lista de status imprimindo uma mensagem por item
  for (final s in status) {
    print('Status possível no sistema: $s');
  }

  // Adiciona uma nova densidade lida pelo sensor
  densidades.add(0.66);
  print('Densidades após nova leitura: $densidades');

  // Filtra apenas densidades em nível de atenção ou pior (>= 0.70)
  List<double> altas = densidades.where((d) => d >= 0.70).toList();
  print('Densidades >= 0.70: $altas');

  // Quantidade total de leituras
  print('Total de densidades registradas: ${densidades.length}');
}
