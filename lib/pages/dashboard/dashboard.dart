import 'package:app_contatto/controllers/scaffold/scaffold.controller.dart';
import 'package:app_contatto/controllers/user/user.controller.dart';
import 'package:app_contatto/pages/dashboard/widgets/accordion/accordion.widget.dart';
import 'package:app_contatto/pages/dashboard/widgets/dashboard_card/dashboard_card_list.widget.dart';
import 'package:app_contatto/pages/dashboard/widgets/dashboard_card_number/dashboard_card_number_list.widget.dart';
import 'package:app_contatto/pages/dashboard/widgets/dashboard_header/dashboard_header.widget.dart';
import 'package:app_contatto/pages/dashboard/widgets/dashboard_message/dashboard_message.dart';
import 'package:app_contatto/shared/drawer/drawer.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  
  DashboardPage({super.key});
  
  ScaffoldController menu_controller = Get.put(ScaffoldController());
  UserController user_controller = Get.find();
  
  
  @override
  Widget build(BuildContext context) {
    
    user_controller.user_observe();
    
    return SafeArea(
      top: true,
      child: Scaffold(
        key: menu_controller.scaffoldkey,
        endDrawer: DrawerWidget(),
        backgroundColor: Theme.of(context).backgroundColor,
        body: SingleChildScrollView(
          child: Column(
              children: [
                DashboardHeaderWidget(),
                DashBoardCardListWidget(),
                NumberCardListWidget(),
                DashboardMessageWidget(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
                  child: AccordionWidget(titulo: 'Acordeão Número 1', conteudo: Text('dhguwdhcasaaacccacacacacacacascsacasacacsacsasasawdawdgfafaawffafawawaffahuwaiuahdiuwhdihihdahiugiuiuagdaiugdau',style: TextStyle(color: Colors.black),)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
                  child: AccordionWidget(titulo: 'Acordeão Número 2', conteudo: Text('ahiugiuiuagdaiugdau',style: TextStyle(color: Colors.black),)),
                ),
              ],
          ),
        ),
      ),
    );
  }
}