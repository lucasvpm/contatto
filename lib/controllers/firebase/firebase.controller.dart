import 'dart:async';

import 'package:app_contatto/pages/login/login.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:app_contatto/firebase_options.dart';

class FirebaseBloc extends GetxController{

  FirebaseBloc();
  
  String fire_status = 'initializing';
  String fire_message = '';

  Future<void> iniciarFirebase() async {
    try{

      await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
      );
      
      print('firebase inicializado!');
      fire_status = 'ok';
      
      Timer(Duration(seconds: 3), () => Get.off(() => LoginPage()));

    }catch(error){
      fire_status = 'error';
      fire_message = '$error';
      print('firebase error: $error');
    }
    update();
  }

  void firebase_retry(){
    fire_status = 'initializing';
    fire_message = '';
    iniciarFirebase();
    update();
  }
  
}