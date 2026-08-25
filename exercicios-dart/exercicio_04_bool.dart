// Exercício 04 - bool
// Flags de controle do cortador autônomo e regras de decisão.

void main() {
  bool areaAtiva = true;
  bool sensorOnline = false;
  bool coletaHabilitada = true;
  bool intervencaoNecessaria = true;

  // Imprime cada flag
  print('Área ativa? $areaAtiva');
  print('Sensor online? $sensorOnline');
  print('Coleta habilitada? $coletaHabilitada');
  print('Intervenção necessária? $intervencaoNecessaria');

  // Coleta só é permitida com as três condições verdadeiras
  if (areaAtiva && sensorOnline && coletaHabilitada) {
    print('Simulação de coleta LIBERADA.');
  } else {
    print('Simulação de coleta BLOQUEADA.');
  }

  // Sensor offline = problema de IoT
  if (!sensorOnline) {
    print('Aviso: IoT offline - verificar conexão do sensor.');
  }

  // Intervenção pendente aciona a equipe
  if (intervencaoNecessaria) {
    print('Equipe deve ser acionada');
  }
}
