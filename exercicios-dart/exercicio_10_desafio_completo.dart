// Exercício 10 - Desafio completo
// Mini sistema de console do VerdeSmart usando TODOS os tipos da aula:
// String, int, double, bool, num, String? (null safety), List, Set, Map,
// DateTime, enum, Record e class.

enum StatusVegetacao { normal, atencao, urgente }

class Medicao {
  int id;
  double densidade;
  double temperatura;
  DateTime dataColeta;
  String? sensorId; // campo opcional: medição pode chegar sem sensor
  String? observacoes; // campo opcional

  Medicao({
    required this.id,
    required this.densidade,
    required this.temperatura,
    required this.dataColeta,
    this.sensorId,
    this.observacoes,
  });
}

class AreaMonitoramento {
  int id;
  String codigo;
  String rodovia;
  bool ativa;
  StatusVegetacao status;
  List<Medicao> medicoes = [];

  AreaMonitoramento({
    required this.id,
    required this.codigo,
    required this.rodovia,
    required this.ativa,
    this.status = StatusVegetacao.normal,
  });

  // Regra de negócio: a densidade da nova medição define o status
  void receberMedicao(Medicao m) {
    medicoes.add(m);
    if (m.densidade >= 0.90) {
      status = StatusVegetacao.urgente;
    } else if (m.densidade >= 0.70) {
      status = StatusVegetacao.atencao;
    } else {
      status = StatusVegetacao.normal;
    }
  }

  // Record como retorno rápido: (codigo, densidade da última medição)
  (String, double) resumoRapido() {
    double ultima = medicoes.isEmpty ? 0.0 : medicoes.last.densidade;
    return (codigo, ultima);
  }
}

void main() {
  // ---- Tipos básicos ----
  String sistema = 'VerdeSmart'; // String
  int anoOperacao = 2026; // int
  bool operacaoAtiva = true; // bool
  num kmMonitorados = 240; // num aceita int...
  kmMonitorados = 240.5; // ...e também double

  // ---- Duas áreas em uma List ----
  List<AreaMonitoramento> areas = [
    AreaMonitoramento(id: 1, codigo: 'SP280-KM120', rodovia: 'SP-280', ativa: true),
    AreaMonitoramento(id: 2, codigo: 'BR116-KM045', rodovia: 'BR-116', ativa: true),
  ];

  // ---- Medições iniciais (com campo opcional preenchido ou não) ----
  areas[0].receberMedicao(Medicao(
    id: 1,
    densidade: 0.45,
    temperatura: 26.8,
    dataColeta: DateTime(2026, 8, 6, 9, 0),
    sensorId: 'SENSOR-01',
    observacoes: 'Vegetação baixa e uniforme',
  ));

  areas[1].receberMedicao(Medicao(
    id: 2,
    densidade: 0.74,
    temperatura: 30.2,
    dataColeta: DateTime(2026, 8, 6, 9, 30),
    sensorId: 'SENSOR-03',
    // observacoes ficou null de propósito (String?)
  ));

  // ---- Set de sensores únicos (duplicata não conta) ----
  Set<String> sensores = {};
  for (final area in areas) {
    for (final m in area.medicoes) {
      if (m.sensorId != null) {
        sensores.add(m.sensorId!);
      }
    }
  }
  sensores.add('SENSOR-01'); // tentativa de duplicar: ignorada

  // ---- Set de rodovias únicas ----
  Set<String> rodovias = areas.map((a) => a.rodovia).toSet();

  // ---- Map com dados resumidos da última medição da área 2 ----
  Medicao ultimaMedicao = areas[1].medicoes.last;
  Map<String, dynamic> resumoMedicao = {
    'id': ultimaMedicao.id,
    'densidade': ultimaMedicao.densidade,
    'temperatura': ultimaMedicao.temperatura,
    'sensorId': ultimaMedicao.sensorId,
  };

  // ================= RELATÓRIO =================
  print('========== $sistema - RELATÓRIO $anoOperacao ==========');
  print('Operação ativa: $operacaoAtiva | Km monitorados: $kmMonitorados');

  // Quantidade de áreas e medições
  int totalMedicoes = areas.fold(0, (soma, a) => soma + a.medicoes.length);
  print('Áreas monitoradas: ${areas.length} | Medições: $totalMedicoes');

  // Média de densidade de todas as medições
  double somaDensidade = 0;
  for (final area in areas) {
    for (final m in area.medicoes) {
      somaDensidade += m.densidade;
    }
  }
  double mediaDensidade = somaDensidade / totalMedicoes;
  print('Média de densidade: ${mediaDensidade.toStringAsFixed(2)}');

  // Status de cada área + observação com fallback para null
  for (final area in areas) {
    String? obs = area.medicoes.last.observacoes;
    print('Área ${area.codigo} (${area.rodovia}) | status=${area.status.name} '
        '| obs: ${obs ?? 'não informado'}');
  }

  print('Rodovias únicas: $rodovias');
  print('Sensores únicos: $sensores');
  print('Resumo da última medição (Map): $resumoMedicao');

  // Record com resumo rápido
  (String, double) resumo = areas[1].resumoRapido();
  print('Resumo rápido (Record): área ${resumo.$1}, densidade ${resumo.$2}');

  // ---- Simulação: chega nova medição que muda o status para URGENTE ----
  print('---------- NOVA MEDIÇÃO CHEGANDO ----------');
  areas[0].receberMedicao(Medicao(
    id: 3,
    densidade: 0.93, // acima de 0.90 => urgente
    temperatura: 31.5,
    dataColeta: DateTime.now(),
    sensorId: 'SENSOR-07',
    observacoes: 'Crescimento acelerado após chuvas',
  ));

  print('Área ${areas[0].codigo} agora está: ${areas[0].status.name}');
  if (areas[0].status == StatusVegetacao.urgente) {
    print('ALERTA: despachar cortador autônomo para ${areas[0].codigo}!');
  }
  print('==================== FIM ====================');
}
