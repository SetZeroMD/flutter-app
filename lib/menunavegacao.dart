// ignore: file_names
// ignore: file_names
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetos_2_noite_menu/agenda.dart';
import 'package:projetos_2_noite_menu/ajuda.dart';
import 'package:projetos_2_noite_menu/clientes.dart';
import 'package:projetos_2_noite_menu/main.dart';
import 'package:projetos_2_noite_menu/relatorios.dart';

class MenuNavegacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.yellow[400],
        child: ListView(
          children: <Widget>[
            cabecalho(
              nome: "K Agenda",
              email: "k.agenda@gmail.com",
              imagem:
                  "https://dm2305files.storage.live.com/y4m7cTd9D3axWgzhwTsTyx9GcENKP2XFmxNd9rmyqR8wYk5nsgrSZSABYgV9OO4rA0IKhbjl7H60GsHM-hBUIbZQNK01sqr873ktoYmhpqYC39ZsLXcfFtH5LhvXSnPkNXC7MXAZIcZ2zDrlt8v2RGSPAPL0jCl_PkJ2Kjt0DwQWFoNc4oHD14_c9dm1XqyUGmW?width=500&height=500&cropmode=none",
            ),
            const SizedBox(
              height: 15,
            ),
            // ignore: prefer_const_constructors
            Divider(color: Colors.white24),
            menuItem(
              nome: "Principal",
              icone: Icons.home,
              tocar: () => selecaoItem(context, 0),
            ),
            const SizedBox(
              height: 15,
            ),
            menuItem(
              nome: "Agenda",
              icone: Icons.calendar_today,
              tocar: () => selecaoItem(context, 1),
            ),
            const SizedBox(
              height: 15,
            ),
            menuItem(
              nome: "Clientes",
              icone: Icons.people,
              tocar: () => selecaoItem(context, 2),
            ),
            const SizedBox(
              height: 15,
            ),
            Divider(color: Colors.white24),
            const SizedBox(
              height: 15,
            ),
            menuItem(
              nome: "Relatórios",
              icone: Icons.analytics,
              tocar: () => selecaoItem(context, 3),
            ),
            const SizedBox(
              height: 15,
            ),
            Divider(color: Colors.white24),
            const SizedBox(
              height: 15,
            ),
            menuItem(
              nome: "Ajuda",
              icone: Icons.help,
              tocar: () => selecaoItem(context, 4),
            ),
          ],
        ),
      ),
    );
  }

  menuItem(
      {required String nome, required IconData icone, VoidCallback? tocar}) {
    return ListTile(
      leading: Icon(icone, color: Colors.black),
      title: Text(
        nome,
        style: TextStyle(color: Colors.black),
      ),
      hoverColor: Colors.white38,
      onTap: tocar,
    );
  }

  cabecalho(
          {required String nome,
          required String email,
          required String imagem}) =>
      InkWell(
          child: Row(
        // ignore: duplicate_ignore
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(imagem),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Text(
                nome,
                style: TextStyle(fontSize: 10, color: Colors.black),
              ),
              Text(
                email,
                style: TextStyle(fontSize: 10, color: Colors.black),
              ),
            ],
          ),
        ],
      ));

  selecaoItem(BuildContext context, int i) {
    Navigator.of(context).pop();

    switch (i) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => MinhaPagina()));
        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Agenda()));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Clientes()));
        break;
      case 3:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Relatorios()));
        break;
      case 4:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Ajuda()));
        break;
      default:
    }
  }
}
