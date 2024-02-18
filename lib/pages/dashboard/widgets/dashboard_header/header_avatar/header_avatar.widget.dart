import 'package:app_contatto/pages/dashboard/widgets/dashboard_header/header_avatar/avatar_status.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_contatto/controllers/user/user.controller.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';


class DashboardAvatarWidget extends StatelessWidget {

  DashboardAvatarWidget({super.key});
  UserController user_controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Stack(
        clipBehavior: Clip.none,
        children: [
           GestureDetector(
             onTap: () => dialog_status(),
             child: Container(
                     height: 65,
                     width: 65,
                     clipBehavior: Clip.hardEdge,
                     decoration: BoxDecoration(
                color: Color(0xFFCCCCCC),
                borderRadius: BorderRadius.circular(70)
                     ),
                     child: Obx(() => Image.network(user_controller.avatar.value,fit: BoxFit.cover,) ),
                     ),
           ),
          AvatarStatusWidget()
        ],
       ),
       Container(
        margin: EdgeInsets.only(left: 7,top: 10),
        width: 120,
        child:  Text('Olá,\n${user_controller.nome}!'.toUpperCase(),
          style: TextStyle(
            height: 1,
            color: Color(0xFF4C4D4E),
            fontWeight: FontWeight.w800
          ),
        ),
       )
      ],
    );
  }

    // Caixa de seleção de status
  void dialog_status(){

    Get.defaultDialog(
      contentPadding: EdgeInsets.all(0),
      radius: 10,
      title: 'Selecionar Status',
      titleStyle: TextStyle(
        fontFamily: 'Campton',
        fontSize: 17,
        fontWeight: FontWeight.w700
      ),
      titlePadding: EdgeInsets.only(top: 25,bottom: 25),
      backgroundColor: Color(0xFFFFFFFF),
      content: Container(
        height: 160,
        child: Obx( () => ListView(
        children: [
          ListTile(
            selectedTileColor: Color(0xFFEEEEEE),
            selected: user_controller.usuario_status.value == 'online' ? true : false,
            onTap: (){
             user_controller.change_status('online');
            },
            title: Row(
              children: [
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Color(0xFF8BBC00),
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                SizedBox(width: 15,),
                Text('Online'.toUpperCase(),
                style: TextStyle(
                  fontFamily: 'Campton',
                  fontSize: 13,
                  fontWeight: FontWeight.bold
                ))
              ],
            ),
          ),
          Divider(color: Color(0xFFAAAAAA),height: 1,),
          ListTile(
            selectedTileColor: Color(0xFFEEEEEE),
            selected: user_controller.usuario_status.value == 'ausente' ? true : false,
            onTap: (){
              user_controller.change_status('ausente');
            },
            title: Row(
              children: [
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 200, 47),
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                SizedBox(width: 15,),
                Text('Ausente'.toUpperCase(),
                style: TextStyle(
                  fontFamily: 'Campton',
                  fontSize: 13,
                  fontWeight: FontWeight.bold
                ))
              ],
            ),
          ),
          Divider(color: Color(0xFFAAAAAA),height: 1,),
          ListTile(
            selectedTileColor: Color(0xFFEEEEEE),
            selected: user_controller.usuario_status.value == 'ocupado' ? true : false,
            onTap: (){
              user_controller.change_status('ocupado');
            },
            title: Row(
              children: [
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 228, 45, 13),
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                SizedBox(width: 15,),
                Text('Ocupado'.toUpperCase(),
                style: TextStyle(
                  fontFamily: 'Campton',
                  fontSize: 13,
                  fontWeight: FontWeight.bold
                ))
              ],
            ),
          )
        ],
      )),
      )
    );
    
  }
  
}