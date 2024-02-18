import 'package:app_contatto/controllers/login/login.controller.dart';
import 'package:app_contatto/controllers/user/user.controller.dart';
import 'package:app_contatto/pages/login/widgets/action_tabs/action_tabs.widget.dart';
import 'package:app_contatto/pages/login/widgets/form/loginform.widget.dart';
import 'package:app_contatto/pages/login/widgets/login-bottom/login.bottom.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  
  UserController userController = Get.put(UserController(), permanent: true);
  LoginFormController login_controller = Get.put(LoginFormController());
  
  double altura = Get.height;

  LoginPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: altura * 0.43,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/imgs/logo_contatto.png'),
                    SizedBox(height: 30,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Seja bem vindo!',style: Theme.of(context).textTheme.headline3,),
                        Text('Faça o LOGIN usando suas credenciais.',style: Theme.of(context).textTheme.headline4,),
                      ],
                    ),
                  ],
                ),
              ),            
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                ActionTabsWidget(),
                LoginWidget()
                ],
              ),
              LoginBottomWidget(),
            ],
          ),
        ),
      ),
      ),
    );
  }
}