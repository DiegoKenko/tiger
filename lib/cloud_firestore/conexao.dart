import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tiger/classes.dart/motocicleta.dart';
import 'package:tiger/classes.dart/usuario.dart';

class Firestore {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference colecaoVeiculo =
      FirebaseFirestore.instance.collection('veiculos');

  Future<void> addMoto(Motocicleta motocicleta) {
    return colecaoVeiculo
        .add({
          'modelo': motocicleta.modelo,
          'marca': motocicleta.marca,
          'ano': motocicleta.ano,
          'placa': motocicleta.placa,
        })
        .then((value) => print("adicionado"))
        .catchError((error) => print("erro: $error"));
  }

  //Future<void> editMoto(Motocicleta motocicleta) {}

  // Future<void> addUsuario(Usuario usuario) {}
  //Future<void> editUsuario(Usuario usuario) {}
}
