import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:crob_project/dashboard.dart';

void main() {
  testWidgets('Verifica o título do AppBar e a navegação para "/dados"',
      (WidgetTester tester) async {
    
    
    final router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const DashBoard(),
        ),
        GoRoute(
          path: '/dados',
          builder: (context, state) => const Scaffold(body: Text('Tela de Dados')),
        ),
      ],
    );


    await tester.pumpWidget(MaterialApp.router(
      routerConfig: router,
    ));

    expect(find.text('Mapa do Campus'), findsOneWidget);


    final dashboardState = tester.state<DashBoardState>(find.byType(DashBoard));
    dashboardState._accessDados();
    await tester.pumpAndSettle();


    expect(find.text('Tela de Dados'), findsOneWidget);
  });
}

