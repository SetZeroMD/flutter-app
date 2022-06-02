import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetos_2_noite_menu/MenuNavegacao.dart';

class Relatorios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuNavegacao(),
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Relatórios"),
      ),
      body: const Text("Relatórios de Fluxo de Caixa"),
    );
  }
}
