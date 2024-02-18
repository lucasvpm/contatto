import 'package:app_contatto/pages/splash_page/progress.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_contatto/controllers/firebase/firebase.controller.dart';


class SplashPage extends StatelessWidget {
  
  SplashPage({super.key});

  var firebloc = Get.put(FirebaseBloc(),permanent: true);

  @override
  Widget build(BuildContext context) {
    
    firebloc.iniciarFirebase();

    return SafeArea(
      top: true,
      bottom: true,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0XFFEEEEEE),Color(0XFFFFFFFF)])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              height: 30,
              color: Color(0xFF024C80),
            ),
            Column(
              children: [
                Image.asset('assets/imgs/logo_contatto.png',width: 280,),
                SizedBox(height: 52,),
                ProgressWidget()
              ],
            ),
            Container(
              width: double.infinity,
              height: 30,
              color: Color(0xFFF58B1C),
            ),
          ],
          
        ),
      ),
    );
  }




}