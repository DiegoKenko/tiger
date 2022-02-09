import 'planoManutencao.dart';
import 'package:tiger/classes.dart/usuario.dart';

class Motocicleta {
  String? nome;
  String placa;
  String marca;
  String modelo;
  String? cor;
  String? ano;
  bool? ativo;
  PlanoManutencao? planoManutencao;
  Usuario? usuario;

  Motocicleta(this.modelo, this.marca, this.placa);

  set plano(x) {}
}
