import 'package:flutter/material.dart';
import 'package:projetos_2_noite_menu/MenuNavegacao.dart';
import 'package:projetos_2_noite_menu/relatorios.dart';
import 'Itens home/cortes.dart';
import 'agenda.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MeuAplicativo());
}

// ignore: use_key_in_widget_constructors
class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
        home: MinhaPagina());
  }
}

// ignore: use_key_in_widget_constructors
class MinhaPagina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MinhaPaginaEstado();
  }
}

class MinhaPaginaEstado extends State<MinhaPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuNavegacao(),
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("K Agenda"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://dm2305files.storage.live.com/y4m7cTd9D3axWgzhwTsTyx9GcENKP2XFmxNd9rmyqR8wYk5nsgrSZSABYgV9OO4rA0IKhbjl7H60GsHM-hBUIbZQNK01sqr873ktoYmhpqYC39ZsLXcfFtH5LhvXSnPkNXC7MXAZIcZ2zDrlt8v2RGSPAPL0jCl_PkJ2Kjt0DwQWFoNc4oHD14_c9dm1XqyUGmW?width=500&height=500&cropmode=none"),
              radius: 60,
            ),
            Divider(color: Colors.white24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                menuCard(
                  nome: "Agenda",
                  icone: Icons.calendar_today,
                  tocar: () => selecaoItem(context, 1),
                ),
                menuCard(
                  nome: "Cortes",
                  icone: Icons.content_cut,
                  tocar: () => selecaoItem(context, 2),
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    menuCard(
                      nome: "Relatorios",
                      icone: Icons.analytics,
                      tocar: () => selecaoItem(context, 4),
                    ),
                    menuCard(
                      nome: "Mensagens",
                      icone: Icons.sms,
                      tocar: () => selecaoItem(context, 1),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  menuCard(
      {required String nome, required IconData icone, VoidCallback? tocar}) {
    return Container(
      height: 100,
      width: 100,
      margin: new EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.yellow,
      ),
      child: InkWell(
        onTap: tocar,
        child: Center(
          child: Icon(icone),
        ),
      ),
    );
  }

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
            .push(MaterialPageRoute(builder: (context) => Cortes()));
        break;
      // case 3:
      //   Navigator.of(context)
      //       .push(MaterialPageRoute(builder: (context) => Cabelereiros()));
      //   break;
      case 4:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Relatorios()));
        break;
      default:
    }
  }
}
