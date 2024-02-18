import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class NumbersCardWidget extends StatelessWidget {
  
  final String imagem;
  final String titulo;
  final int numero;
  final Color color;
  final Color backgroundColor;
  
  NumbersCardWidget( { 
      Key? key, required this.imagem,
      required this.titulo,
      required this.numero,
      required this.backgroundColor,
      required this.color
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 13),
      child: Row(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
            imagem,
            height: 23,
            color: color,
            semanticsLabel: 'Ícone'
          ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 5),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                '$numero',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: color,
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Campton'
                )),
                Text(
                titulo,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: color,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Campton'
                ),
          )
              ],
            ),
            ))
        ],
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}