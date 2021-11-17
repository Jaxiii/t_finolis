import 'package:flutter/material.dart';
import 'package:tarot/pages/dois_tiradas.dart';
import 'package:tarot/pages/um_tirada.dart';

import 'dart:math';

import 'package:tarot/widgets/meu_texto.dart';

List<String> arcano = [
  "",
  "Louco", // 1
  "Sacerdotisa", // 2
  "Mago", // 3
  "Imperatriz", // 4
  "Imperador", // 5
  "Papa", // 6
  "Enamorado", // 7
  "Carro", // 8
  "Justiça", // 9
  "Eremita", // 10
  "Roda da Fortuna", // 11
  "Força", // 12
  "Dependurado", // 13
  "Diabo", // 14
  "Morte", // 15
  "Temperança", // 16
  "Lua", // 17
  "Torre", // 18
  "Estrela", // 19
  "Sol", // 20
  "Julgamento", // 21
  "Mundo" // 22
];

final Color indigo = Color(0xFFC5CAE9);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: indigo),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyHomePage(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 10),
            const TabBar(
              tabs: [
                Icon(Icons.ice_skating),
                Icon(Icons.cabin),
                Icon(Icons.fire_extinguisher)
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.2,
              child: TabBarView(
                children: [
                  TiradaUm(
                  ),
                  TiradaDois(
                  ),
                  Container(
                    color: Colors.blue,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
