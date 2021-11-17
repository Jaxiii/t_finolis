import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tarot/constants/globals.dart';
import 'package:tarot/widgets/meu_texto.dart';

class TiradaUm extends StatefulWidget {
  @override
  _TiradaUmState createState() => _TiradaUmState();
}

class _TiradaUmState extends State<TiradaUm> {
  int resultadoCartada = 0;

  @override
  initState() {
    super.initState();
  }

  void tiradaUm() {
    setState(() {
      resultadoCartada = MinhasConstantes.nextNumber(min: 1, max: 22);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tirada Um'),
      ),
      body: Stack(alignment: Alignment.center, children: [
        Positioned(
            top: 10,
            child: ElevatedButton(
              onPressed: () => tiradaUm(),
              child: Text(' Mostrar Cartas '),
            )),
        Positioned(
          top: 200,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 70,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(MinhasConstantes.arcano[resultadoCartada]),
          ),
        ),
      ]),
    );
  }
}
