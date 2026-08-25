// Exercício 02 - int
// Contagens e IDs do sistema VerdeSmart com operações sobre inteiros.

void main() {
  int idArea = 4;
  int idMedicao = 27;
  int totalMedicoes = 18;
  int sensoresAtivos = 5;
  int alertasAbertos = 3;

  // Soma dos IDs
  int somaIds = idArea + idMedicao;
  print('Soma de idArea + idMedicao: $somaIds');

  // Próximo ID de medição
  int proximoId = idMedicao + 1;
  print('Próximo ID de medição: $proximoId');

  // Regra: 3 ou mais alertas abertos = operação crítica
  if (alertasAbertos >= 3) {
    print('Operação crítica');
  } else {
    print('Operação estável');
  }

  // Dobro de sensores ativos
  int dobroSensores = sensoresAtivos * 2;
  print('Dobro de sensoresAtivos: $dobroSensores');

  print('Total de medições registradas: $totalMedicoes');
}
