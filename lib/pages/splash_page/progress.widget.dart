import 'package:app_contatto/pages/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_contatto/controllers/firebase/firebase.controller.dart';

class ProgressWidget extends StatelessWidget {
  
  ProgressWidget();
  
  var firebloc = Get.put(FirebaseBloc());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FirebaseBloc>(builder: (firebloc){
      return Padding(
        padding: EdgeInsets.all(25),
        child: progress_widget(context),
      );
    });
  }
  
  Widget progress_widget(BuildContext context){

    switch (firebloc.fire_status){
      case 'error':
        return Column(
          children: [
            Text('Ocorreu um erro. cheque sua conexão e tente novamente',textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyText1),
            SizedBox(height: 25,),
            TextButton(
              onPressed: () => firebloc.firebase_retry(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                child: Text('Tentar Novamente',style: Theme.of(context).textTheme.bodyText2),
              ),)
          ],
        );
      default:
        return CircularProgressIndicator();
    }
  }
}

