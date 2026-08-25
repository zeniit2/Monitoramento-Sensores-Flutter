// Exercício 09 - DateTime + enum + Record
// Data da coleta, status como enum e resumo rápido em Record nomeado.

enum StatusVegetacao { normal, atencao, urgente }

void main() {
  // Data e hora da coleta
  DateTime dataColeta = DateTime(2026, 8, 6, 16, 45);

  // Status começa em atenção
  StatusVegetacao status = StatusVegetacao.atencao;

  // Record nomeado com o resumo da área
  ({String codigo, String rodovia, double densidade}) resumo = (
    codigo: 'SP330-KM088',
    rodovia: 'SP-330',
    densidade: 0.79,
  );

  // dia/mês/ano da coleta
  print('Coleta: ${dataColeta.day}/${dataColeta.month}/${dataColeta.year}');

  // Status atual
  print('Status atual: ${status.name}');

  // Dados do record
  print('Área: ${resumo.codigo} | Rodovia: ${resumo.rodovia} '
      '| Densidade: ${resumo.densidade.toStringAsFixed(2)}');

  // Vegetação cresceu: status muda para urgente
  status = StatusVegetacao.urgente;
  print('Novo status: ${status.name}');

  // Próxima inspeção: 7 dias depois da coleta
  DateTime proximaInspecao = dataColeta.add(const Duration(days: 7));
  print('Próxima inspeção: ${proximaInspecao.day}/${proximaInspecao.month}/'
      '${proximaInspecao.year}');
}
