// Exercício 08 - Map
// Medição como Map<String, dynamic> - o "JSON mental" da API VerdeSmart.

void main() {
  Map<String, dynamic> medicao = {
    'id': 42,
    'areaCodigo': 'SP280-KM120',
    'alturaVegetacao': 1.62,
    'densidade': 0.68,
    'temperatura': 27.9,
    'umidade': 61.5,
    'sensorId': null, // ainda sem sensor vinculado
  };

  // Leitura de valores por chave
  print('Código da área: ${medicao['areaCodigo']}');
  print('Densidade: ${medicao['densidade']}');
  print('Temperatura: ${medicao['temperatura']}');

  // Atualiza o sensor responsável pela medição
  medicao['sensorId'] = 'SENSOR-09';

  // Nova leitura de densidade
  medicao['densidade'] = 0.77;

  // Percorre todas as entradas do map
  print('--- Medição completa ---');
  medicao.forEach((chave, valor) {
    print('$chave => $valor');
  });
}
