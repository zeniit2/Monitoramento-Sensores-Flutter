# Monitoramento-Sensores-Flutter

App Flutter do **VerdeSmart** - Monitoramento de vegetação e sensores em rodovias.

Disciplina: Desenvolvimento Mobile & IoT — Engenharia Mecatrônica, 2EMR (FIAP)
Aula de 04/08/2026 — Flutter (framework, widgets e primeira interface)

## Sobre

Versão Flutter do mesmo domínio já construído pela turma em:

- `sistema-sensores-mobile` — React Native + Expo + TypeScript
- `monitoramento-sensores-api` — Java + Spring Boot

Nesta etapa o app usa **dados locais (mock)**. A integração com a API Java vem nas próximas aulas.

## Estrutura

```
lib/
├── main.dart                          # ponto de entrada + DashboardScreen
├── models/
│   └── area_monitoramento.dart        # enum StatusVegetacao + AreaMonitoramento
└── widgets/
    └── area_card.dart                 # AreaCard (equivalente ao AreaCard.tsx)
```

Comparativo com o app React Native:

| React Native | Flutter |
| --- | --- |
| `App.tsx` | `lib/main.dart` |
| `src/types/areaMonitoramento.ts` | `lib/models/area_monitoramento.dart` |
| `src/components/AreaCard.tsx` | `lib/widgets/area_card.dart` |
| `src/screens/DashboardScreen.tsx` | `DashboardScreen` em `main.dart` (por enquanto) |
| `src/services/api.ts` | (próximas aulas — integração Java) |

## Como rodar

```bash
flutter pub get
flutter run -d chrome
```

## Exercícios da aula (branch `iniciando-flutter`)

- **A — Tema personalizado**: cor seed alterada para verde-teal (`#00796B`).
- **B — Quarta área**: adicionada `BR050-KM310` (Uberaba / MG, status `atencao`).
- **C — Trecho no card**: linha `Trecho: KM 120.0 até 125.0` no `AreaCard`.
- **D — Contadores por status**: cabeçalho do dashboard mostra a contagem de
  áreas `Normal`, `Atenção` e `Urgente` usando `.where(...).length`.
