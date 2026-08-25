// Exercício 07 - Set
// Conjunto de rodovias: Set nunca guarda elementos duplicados.

void main() {
  Set<String> rodovias = {'SP-280', 'BR-116', 'SP-330'};
  print('Conjunto inicial: $rodovias');

  // Tentativa de duplicar: o Set ignora silenciosamente
  rodovias.add('SP-280');
  print('Após tentar adicionar SP-280 de novo: $rodovias');

  // Adiciona uma rodovia realmente nova
  rodovias.add('BR-101');
  print('Conjunto final: $rodovias');

  // contains verifica pertencimento
  print('Contém BR-116? ${rodovias.contains('BR-116')}');

  // length = quantidade de rodovias ÚNICAS (a duplicata não contou)
  print('Rodovias únicas monitoradas: ${rodovias.length}');
}
