import 'package:app_contatto/controllers/login/login.controller.dart';
import 'package:app_contatto/pages/login/widgets/action_tabs/action_button.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActionTabsWidget extends StatelessWidget {

  ActionTabsWidget();

  LoginFormController loginController = Get.put(LoginFormController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GetBuilder<LoginFormController>(builder: (controller) {
        return Row(
        mainAxisAlignment: controller.alinhamento,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ActionButtonWidget(label: 'COLABORADOR', callback: (){ controller.activateFirstTab(); }, isActive: controller.firstTabActive,),
          ActionButtonWidget(label: 'MOTORISTA', callback: (){ controller.activateSecondTab(); }, isActive: controller.secondTabActive,),
        ],    
      );
      },)
    );
  }
}