// Teste de widget do dashboard VerdeSmart.
//
// Verifica se a tela inicial lista as áreas de monitoramento e mostra
// o resumo por status no cabeçalho.

import 'package:flutter_test/flutter_test.dart';

import 'package:monitoramento_sensores_flutter/main.dart';
import 'package:monitoramento_sensores_flutter/widgets/area_card.dart';

void main() {
  testWidgets('Dashboard mostra o resumo e um card por área',
      (WidgetTester tester) async {
    await tester.pumpWidget(const VerdeSmartApp());

    // AppBar do app
    expect(find.text('VerdeSmart'), findsOneWidget);

    // A lista de áreas é renderizada com AreaCard
    // (o ListView.builder só constrói os cards visíveis na tela)
    expect(DashboardScreen.areas.length, 4);
    expect(find.byType(AreaCard), findsWidgets);

    // Cabeçalho com os contadores por status (Exercício D)
    expect(
      find.textContaining('Normal: 1 | Atenção: 2 | Urgente: 1'),
      findsOneWidget,
    );
  });

  testWidgets('Tocar em um card mostra SnackBar com o código da área',
      (WidgetTester tester) async {
    await tester.pumpWidget(const VerdeSmartApp());

    await tester.tap(find.byType(AreaCard).first);
    await tester.pump();

    expect(find.text('Área selecionada: SP280-KM120'), findsOneWidget);
  });
}
