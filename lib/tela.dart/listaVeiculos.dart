import 'package:flutter/material.dart';
import 'package:tiger/classes.dart/motocicleta.dart';
import 'package:tiger/tela.dart/veiculoPainel.dart';

class ListaVeiculos extends StatefulWidget {
  ListaVeiculos({Key? key}) : super(key: key);

  @override
  State<ListaVeiculos> createState() => ListaVeiculosState();
}

class ListaVeiculosState extends State<ListaVeiculos> {
  var motocicletas = meusVeiculos();
  @override
  void setState(VoidCallback fn) {
    this.motocicletas = meusVeiculos();
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 50, bottom: 40),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.fromLTRB(
                    30,
                    20,
                    20,
                    20,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VeiculoPainel(
                            motocicleta: motocicletas[index],
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 20,
                      child: ListTile(
                        tileColor: Color.fromRGBO(250, 165, 60, 0.3),
                        hoverColor: Colors.orange,
                        leading: Icon(Icons.motorcycle_sharp),
                        title: Text(motocicletas[index].modelo),
                        subtitle: Text(motocicletas[index].marca),
                        trailing: Text(motocicletas[index].placa),
                      ),
                    ),
                  ),
                );
              },
              itemCount: motocicletas.length,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VeiculoPainel(),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 250,
                height: 50,
                child: Container(
                  child: Icon(Icons.add),
                  color: Colors.orange,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

List<Motocicleta> meusVeiculos() {
  return [
    Motocicleta('TWISTER', 'HONDA', 'HCX8121'),
    Motocicleta('TWISTER', 'HONDA', 'HCX8121'),
    Motocicleta('TWISTER', 'HONDA', 'HCX8121'),
    Motocicleta('TWISTER', 'HONDA', 'HCX8121'),
    Motocicleta('TWISTER', 'HONDA', 'HCX8121'),
    Motocicleta('TWISTER', 'HONDA', 'HCX8121'),
    Motocicleta('TWISTER', 'HONDA', 'HCX8121'),
  ];
}
