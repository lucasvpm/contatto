import 'package:app_contatto/controllers/login/login.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginSubmitButtonWidget extends StatelessWidget {
  
  LoginSubmitButtonWidget({ Key? key, required this.callback}) : super(key: key);
    
  Function callback;
  
  @override
  Widget build(BuildContext context) {
    return TextButton(
            onPressed: (){ 
              callback(); 
            },
            child: Container(
            padding: EdgeInsets.symmetric(vertical: 6),
            width: double.infinity,
            child: Text('ENTRAR',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Campton",
              fontWeight: FontWeight.w700
            ),),
          ));    
  }
}