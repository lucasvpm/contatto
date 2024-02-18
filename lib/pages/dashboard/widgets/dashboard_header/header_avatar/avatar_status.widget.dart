import 'package:app_contatto/controllers/user/user.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AvatarStatusWidget extends StatelessWidget {
  AvatarStatusWidget({super.key});
  
  UserController user_controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Positioned(
            bottom: -2,
            left: 45,
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: status_color(),
                  borderRadius: BorderRadius.circular(20)
                ),
              )),
              SizedBox(width: 5,),
              Obx(() => Text('${user_controller.usuario_status.value}'.toUpperCase(),
              style: TextStyle(
                color: Color(0xFF929292),
                fontSize: 13,
                fontWeight: FontWeight.bold
              ),))
            ],
                    )
          );
  }

  Color status_color(){
    switch(user_controller.usuario_status.value){
      case 'online':
        return Color(0xFF8BBC00);
      case 'ausente':
        return Color.fromARGB(255, 255, 200, 47);
      case 'ocupado':
        return Color.fromARGB(255, 228, 45, 13);
      default:
        return Color(0xFFAAAAAA);
    }
  }
  
}