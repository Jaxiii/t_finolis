import 'package:flutter/material.dart';

class MeuTexto extends StatefulWidget {
  String title;
  MeuTexto(this.title, {Key? key}) : super(key: key);

  @override
  _MeuTextoState createState() => _MeuTextoState();
}

class _MeuTextoState extends State<MeuTexto> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      widget.title,
      style: const TextStyle(
        fontSize: 15,
        //overflow: TextOverflow.ellipsis,
      ),
    ));
  }
}
