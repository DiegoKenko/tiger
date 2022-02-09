import 'package:flutter/material.dart';
import 'package:tiger/tela.dart/listaVeiculos.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tiger/cloud_firestore/firebase_options.dart';
import 'package:tiger/firebase_auth/autenticacaoUsario.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.android);
  await Auth().signInWithGoogle();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Scaffold(
        drawer: Drawer(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 60, 10, 80),
            child: ListView(
              children: [
                ListTile(
                  onTap: () {},
                  title: Text('perfil'),
                  leading: Icon(Icons.person),
                ),
                ListTile(
                  title: Text('configurações'),
                  onTap: () {},
                  leading: Icon(Icons.settings),
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.orange,
        ),
        backgroundColor: Color.fromRGBO(207, 207, 207, 1),
        body: ListaVeiculos(),
      ),
    );
  }
}
