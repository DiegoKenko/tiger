import 'package:tiger/classes.dart/itemManutencao.dart';
import 'package:tiger/classes.dart/motocicleta.dart';

class PlanoManutencao {
  Motocicleta motocicleta;
  List<ItemManutencao> itemManutencao;
  bool? ativo;

  PlanoManutencao(this.motocicleta, this.itemManutencao);

  void agendar() {}
  void realizar() {}
}
