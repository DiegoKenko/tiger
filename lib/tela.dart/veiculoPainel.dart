import 'package:flutter/material.dart';
import 'package:tiger/classes.dart/motocicleta.dart';
import 'package:tiger/componentes/divisoriaPrincipal.dart';
import 'package:tiger/cloud_firestore/conexao.dart';

class VeiculoPainel extends StatelessWidget {
  VeiculoPainel({Key? key, this.motocicleta}) : super(key: key);

  final Motocicleta? motocicleta;

  @override
  Widget build(BuildContext context) {
    if (motocicleta != null) {
      return Scaffold(
        appBar: AppBar(
          elevation: 10,
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 20, 5),
              child: IconButton(
                icon: Icon(
                  Icons.check_box,
                  color: Colors.green,
                ),
                onPressed: () {
                  Firestore().addMoto(motocicleta!);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 20, 5),
              child: IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 20, 5),
              child: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              ),
            ),
          ],
          backgroundColor: Colors.orange,
        ),
        backgroundColor: Colors.grey[300],
        body: ClippedPartsWidget(
          top: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 10, 20),
                child: Column(
                  verticalDirection: VerticalDirection.down,
                  children: [
                    TextFormField(
                      readOnly: true,
                      initialValue: motocicleta!.marca,
                    ),
                    TextFormField(
                      readOnly: true,
                      initialValue: motocicleta!.modelo,
                    ),
                    TextFormField(
                      readOnly: true,
                      initialValue: motocicleta!.placa,
                    ),
                    TextFormField(
                      readOnly: true,
                      initialValue: motocicleta!.ano,
                    ),
                    TextFormField(
                      readOnly: true,
                      initialValue: motocicleta!.cor,
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottom: Container(
            margin: EdgeInsets.only(top: 300),
            height: 600,
            color: Colors.orange[300],
            child: Center(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Text(index.toString());
                      },
                      itemCount: 80,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
        ),
        backgroundColor: Color.fromRGBO(207, 207, 207, 1),
        body: ClippedPartsWidget(
          top: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Container(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                      initialValue: 'marca',
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                      initialValue: 'modelo',
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                      initialValue: 'placa',
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                      initialValue: 'ano',
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                      initialValue: 'cor',
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottom: Container(
            margin: EdgeInsets.only(top: 300),
            height: 600,
            color: Colors.orange,
            child: Center(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Text(index.toString());
                      },
                      itemCount: 80,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
