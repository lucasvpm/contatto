import 'package:app_contatto/pages/dashboard/widgets/dashboard_message/dashboard_message.controller.dart';
import 'package:app_contatto/shared/section_title/section_title.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class DashboardMessageWidget extends StatelessWidget {
  
  DashboardMessageWidget({super.key});
  DashboardMessageController controle = DashboardMessageController();

  @override
  Widget build(BuildContext context) {
    return Obx( () =>
      Container(
        height: controle.message_open.value == true  ? null : 0,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF4C4D4E)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SectionTitle(titulo: 'Atenção!', cor: Color(0xFFFFFFFF)),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer.",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF)
                    ),)
                  ],
                ),
              ),
            ),
            controle.message_open == true ? button_close() : SizedBox(height: 0,)
          ],
        ),
      ),
    );
  }


  Widget button_close(){  
  return Positioned(
    top: 5,
    right: 20,
    child: GestureDetector(
      onTap: (){
        controle.close_message();
      },
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.35),
            offset: Offset(0,3),
            blurRadius: 6
          )
        ]
        ),
        child: Icon(
          Icons.close,
          color: Color(0xFF4C4D4E),
        ),
      ),
      ),
      );
  }
}

