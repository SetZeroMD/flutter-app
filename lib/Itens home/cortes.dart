import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetos_2_noite_menu/MenuNavegacao.dart';
import 'package:projetos_2_noite_menu/main.dart';

class Cortes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: MenuNavegacao(),
      appBar: AppBar(
        actions: <Widget>[
          // botão de
          IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MinhaPagina()))),
        ],
        // ignore: prefer_const_constructors
        title: Text("Cortes"),
      ),
      body: const Text("Lista de cortes"),
    );
  }
}
