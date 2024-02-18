import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  
  String titulo;
  Color cor;

  SectionTitle( { Key? key, required this.titulo, required this.cor} ): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(titulo,
    style: TextStyle(
      fontSize: 28,
      color: cor,
      fontWeight: FontWeight.bold
    ),);
  }
}