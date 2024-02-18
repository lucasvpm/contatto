import 'package:app_contatto/controllers/user/user.controller.dart';
import 'package:app_contatto/pages/dashboard/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoginFormController extends GetxController{

  LoginFormController();
  
  // Atributos das Abas
  MainAxisAlignment alinhamento = MainAxisAlignment.start;
  bool firstTabActive = true;
  bool secondTabActive = false;
  
  // Atributos dos campos de login
  bool HidePassword = true;

  String username = '';
  String password = '';

  void input_user(String value){
    username = value;
  }

    void input_password(String value){
    password = value;
  }
  

  void activateFirstTab(){
    firstTabActive = true;
    secondTabActive = false;
    alinhamento = MainAxisAlignment.start;
    update();
  }

  void activateSecondTab(){
    firstTabActive = false;
    secondTabActive = true;
    alinhamento = MainAxisAlignment.end;
    update();
  }


  void togglePassword(){

    if(HidePassword == false){
      HidePassword = true;
    }else if( HidePassword == true ){
      HidePassword = false;
    }
    update();
  }

  

}