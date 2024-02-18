import 'package:app_contatto/controllers/login/login.controller.dart';
import 'package:app_contatto/controllers/user/user.controller.dart';
import 'package:app_contatto/pages/login/widgets/form/form.field.widget.dart';
import 'package:app_contatto/pages/login/widgets/form/submit.button.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginWidget extends StatelessWidget {
  
  LoginFormController login_controller = Get.find();
  UserController userController = Get.find();

  LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 45),
      child: GetBuilder<LoginFormController>(
        builder: (controller) {
          return Column(
        children: [
          LoginInputWidget(label: 'Login', placeholder: 'Digite seu Login',),
          SizedBox(height: 25),
          LoginPasswordWidget(label: 'Senha', placeholder: 'Digite sua Senha', obscure: controller.HidePassword, iconCallback: () { controller.togglePassword(); },),
          SizedBox(height: 25),
          LoginSubmitButtonWidget( callback: () => userController.auth_login(login_controller.username, login_controller.password), )
        ],
      );
        },
      ),
    );
  }
}