import 'package:flutter_side_menu/flutter_side_menu.dart';
import 'package:flutter/material.dart';
import 'package:crob_project/services/auth_service.dart';
import 'package:go_router/go_router.dart';
import '../config.dart' as config;

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  void _redirecionarParaTela(String rota) {
    GoRouter.of(context).pushReplacement(rota);
  }

  void _accessDados() {
    _redirecionarParaTela('/dados');
  }

  void _accessCampus(){
    _redirecionarParaTela('/campus');
  }

  void _accessDisciplina() {
    _redirecionarParaTela('/disciplinas');
  }

  Future<void> _exit() async {
    await AuthService().logout();
    navigation();
  }

  void navigation() {
    GoRouter.of(context).pushReplacement('/login');

    _redirecionarParaTela('/login');
  }