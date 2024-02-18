import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActionButtonWidget extends StatelessWidget {
  
  String label;
  Function callback;
  bool isActive;
  double larguraAtiva = (Get.width * 0.50);

  ActionButtonWidget({ Key? key, required this.label, required this.callback, this.isActive = false }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callback(),
      child: Container(
            width: isActive ? larguraAtiva : null,
            decoration: BoxDecoration(
              boxShadow: isActive ? [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.16),
                  blurRadius: 6
                  
                )
              ] : null,
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
              color: isActive ? Colors.white : Color(0xFFF1F1F1),
            ),
            child: Padding(
              padding: isActive ? EdgeInsets.symmetric(horizontal: 25,vertical: 15) : EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              child: Text('$label',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isActive ? Color(0xFFF58B1C) : Color(0xFF6D6E71),
                fontSize: isActive ? 16 : 14,
                decoration: TextDecoration.none,
                fontFamily: 'Camptom',
                fontWeight: isActive ? FontWeight.w900 : FontWeight.w700
              ),),
            ),
          ),
    );
  }
}