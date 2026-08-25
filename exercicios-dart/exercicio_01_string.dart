// Exercício 01 - String
// Ficha de uma área monitorada usando interpolação e métodos de String.

void main() {
  String codigoArea = 'SP348-KM032';
  String rodovia = 'SP-348';
  String localizacao = 'Campinas / SP';
  String sensorId = 'SENSOR-05';

  // Ficha completa com interpolação ($variavel)
  print('===== FICHA DA ÁREA =====');
  print('Código: $codigoArea');
  print('Rodovia: $rodovia');
  print('Localização: $localizacao');
  print('Sensor: $sensorId');

  // Código da área em maiúsculas
  print('Código em maiúsculas: ${codigoArea.toUpperCase()}');

  // Quantidade de caracteres do sensorId
  print('Caracteres do sensorId: ${sensorId.length}');

  // Verifica se a rodovia contém o caractere '-'
  print('Rodovia contém "-"? ${rodovia.contains('-')}');
}
