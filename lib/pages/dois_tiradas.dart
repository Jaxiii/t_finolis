import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tarot/constants/globals.dart';
import 'package:tarot/widgets/meu_texto.dart';

class TiradaDois extends StatefulWidget {
  @override
  _TiradaDoisState createState() => _TiradaDoisState();
}

class _TiradaDoisState extends State<TiradaDois> {
  List<int> resultadoCartada = [0, 0];

  @override
  initState() {
    super.initState();
  }

  void tiradaDois() {
    setState(() {
      resultadoCartada = MinhasConstantes.nextNumbers(2, min: 1, max: 22);
      print(resultadoCartada);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tirada dois'),
      ),
      body: Stack(alignment: Alignment.center, children: [
        Positioned(
            top: 10,
            child: ElevatedButton(
              onPressed: () => tiradaDois(),
              child: Text(' Mostrar Cartas '),
            )),
        Positioned(
          top: 200,
          right: 65,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 70,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(MinhasConstantes.arcano[resultadoCartada[0]]),
          ),
        ),
        Positioned(
          top: 200,
          left: 65,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 70,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(MinhasConstantes.arcano[resultadoCartada[1]]),
          ),
        ),
      ]),
    );
  }
}
