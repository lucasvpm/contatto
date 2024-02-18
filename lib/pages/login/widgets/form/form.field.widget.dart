import 'package:app_contatto/controllers/login/login.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginInputWidget extends StatelessWidget {
  
  String label;
  String placeholder;

  LoginFormController login_controller = Get.find();


  LoginInputWidget({ Key? key, required this.label, required this.placeholder}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                label: Text('$label'),
                hintText: '$placeholder',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0))
                )
              ),
              onChanged: (value) => {
                  login_controller.username = value
              },
            );  
  }
}

class LoginPasswordWidget extends StatelessWidget {
  
  String label;
  String placeholder;
  bool obscure;
  Function iconCallback;

  LoginFormController login_controller = Get.find();

  LoginPasswordWidget({ Key? key, required this.label, required this.placeholder,required this.obscure,required this.iconCallback }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return TextField(
              obscureText: (obscure == true) ? true : false,
              decoration: InputDecoration(
                suffix: Container(
                  padding: EdgeInsets.only(top: 4),
                  child: GestureDetector(
                    onTap: (){ iconCallback(); },
                    child: (obscure == true) ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                  ),
                ),
                contentPadding: EdgeInsets.only(left: 25, right: 25, bottom: 6, top: 10),
                label: Text('$label'),
                hintText: '$placeholder',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0))
                ),
              ),
              onChanged: (value) => {
                  login_controller.password = value
              }
            );  
  }
}