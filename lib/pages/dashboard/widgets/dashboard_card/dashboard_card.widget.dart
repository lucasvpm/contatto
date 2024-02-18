import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CardDashboardWidget extends StatelessWidget {
  
  final String imagem;
  final String titulo;
  final Color color;
  final Color backgroundColor;
  final Function callback;
  
  CardDashboardWidget( { Key? key, required this.imagem,required this.titulo, required this.backgroundColor, required this.color, required this.callback} ): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 131,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          children: [
            SvgPicture.asset(
              imagem,
              height: 32,
              color: color,
              semanticsLabel: 'Ícone'
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              titulo,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: color,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: 'Campton'
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.16),
              offset: Offset(0,3),
              blurRadius: 3
              
            )
          ]
        ),
      ),
      onTap: () => callback(),
    );
  }
}